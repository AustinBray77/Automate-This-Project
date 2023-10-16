module ShapeCreator exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

import KeyFunctions exposing (..)
import HelperFunctions exposing (..)
import Html exposing (main_)
import Html.Attributes exposing (height)

--TODO Add function descriptions

type Action = Dragging
  | None
  | TypingInput NumberShapeProperty String

type ID = Num Int
  | ShapeButton
  | BackGround
  | PropertyFieldID NumberShapeProperty

type ShapeTypeOnly = RectT | OvalT | NgonT

-- Takes in one Float for each parameter to build the shape
type ShapeType = Rect Float Float Float
  |  Oval Float Float
  |  Ngon Int Float

type RectProperty = RectWidth | RectHeight | Roundness
type OvalProperty = OvalWidth | OvalHeight
type NgonProperty = NgonSides | NgonRadius

type FloatShapeProperty = PosX | PosY | Rotation | ScaleX | ScaleY | OutlineSize
type NumberShapeProperty = FloatShapeProperty FloatShapeProperty |
  RectProperty RectProperty |
  OvalProperty OvalProperty |
  NgonProperty NgonProperty

type ColourShapeProperty = OutlineColour | FillColour
type ShapeProperty = ColourShapeProperty | NumberShapeProperty

type alias PropertyEditorField = { text : String, property : FloatShapeProperty }

propertyToShapeType: NumberShapeProperty -> Maybe ShapeTypeOnly
propertyToShapeType property = 
  case property of 
    OvalProperty _ -> Just OvalT
    RectProperty _ -> Just RectT
    NgonProperty _ -> Just NgonT
    _ -> Nothing

shapeTypeOnly: ShapeType -> ShapeTypeOnly
shapeTypeOnly shapeType =
  case shapeType of 
    Rect _ _ _ -> RectT
    Oval _ _ -> OvalT
    Ngon _ _ -> NgonT

emptyShape: Shape Msg
emptyShape = rect 0 0 |> ghost

baseClickableBox : Shape Msg
baseClickableBox = 
  roundedRect 30 10 1.5
  |> filled white
  |> addOutline (solid 0.75) blue

buildTextShape: String -> Shape Msg
buildTextShape string = 
  text string
    |> selectable
    |> size 7
    |> fixedwidth 
    --TODO Custom font
    |> filled black

buildLabel: String -> Shape Msg
buildLabel string = 
  text string
    |> size 4
    |> fixedwidth 
    |> filled black

getFieldName: NumberShapeProperty -> String
getFieldName property =
  case property of 
    FloatShapeProperty floatProperty ->
      case floatProperty of 
        PosX -> "X Position"
        PosY -> "Y Position"
        Rotation -> "Rotation"
        ScaleX -> "X Scale"
        ScaleY -> "Y Scale"
        OutlineSize -> "Outline Size"
    RectProperty rectProperty ->
      case rectProperty of
        RectWidth -> "Width"
        RectHeight -> "Height"
        Roundness -> "Roundness"
    OvalProperty ovalProperty ->
      case ovalProperty of
        OvalWidth -> "Width"
        OvalHeight -> "Height"
    NgonProperty ngonProperty ->
      case ngonProperty of 
        NgonSides -> "Sides"
        NgonRadius -> "Radius"

getShapePropertyValue: NumberShapeProperty -> ShapeType -> Maybe Float
getShapePropertyValue property shape = 
  case shape of 
    Rect width height roundness ->
      case property of 
        RectProperty RectWidth -> Just width
        RectProperty RectHeight -> Just height
        RectProperty Roundness -> Just roundness
        _ -> Nothing
    Oval width height ->
      case property of 
        OvalProperty OvalWidth -> Just width
        OvalProperty OvalHeight -> Just height
        _ -> Nothing
    Ngon sides radius ->
      case property of 
        NgonProperty NgonSides -> Just (toFloat sides)
        NgonProperty NgonRadius -> Just radius
        _ -> Nothing

allSameShape: List ShapeType -> Maybe ShapeTypeOnly
allSameShape shapes =
  let 
    checkEqual: ShapeTypeOnly -> Maybe ShapeTypeOnly -> Maybe ShapeTypeOnly
    checkEqual typeA maybeTypeB =
      case maybeTypeB of 
        Nothing ->
          Nothing
        Just typeB ->
          case typeA == typeB of 
            True -> maybeTypeB
            False -> Nothing
  in 
    List.map shapeTypeOnly shapes
      |> List.foldl checkEqual 
        (case List.head shapes of 
            Nothing -> Nothing
            Just shapeType -> Just (shapeTypeOnly shapeType))
                                
getPropertyString: Model -> NumberShapeProperty -> String
getPropertyString model property =
  let 
    selectedShapeInfos = 
      model.userShapes
        |> List.filter (shapeSelected model)
        |> List.map .shapeInfo
    selectedShapeTypes =
      model.userShapes
        |> List.filter (shapeSelected model)
        |> List.map .shapeType
  in
    case property of 
      FloatShapeProperty floatProperty ->
        List.map (getPropertyFromShapeInfo floatProperty) selectedShapeInfos
          |> allEqualFloat
          |> propertyFloatToString model (FloatShapeProperty floatProperty)
      otherShapeProperty -> 
        List.map (getShapePropertyValue property) selectedShapeTypes 
          |> allEqualMaybeFloat 
          |> propertyFloatToString model (otherShapeProperty)

--TODO If string is empty then leave current model property in box
  -- Maybe highlight it blue or something
buildPropertyField: Model -> NumberShapeProperty -> Shape Msg
buildPropertyField model property =
  let 
    selectedShapeInfos = 
      model.userShapes
        |> List.filter (shapeSelected model)
        |> List.map .shapeInfo
    selectedShapeTypes =
      model.userShapes
        |> List.filter (shapeSelected model)
        |> List.map .shapeType
    
    validProperty: Bool
    validProperty = 
      allSameShape selectedShapeTypes == propertyToShapeType property ||
      case property of 
        FloatShapeProperty _ -> True
        _ -> False

    textString = 
      case property of 
        FloatShapeProperty floatProperty ->
          getPropertyString model property
        otherProperty ->
          if validProperty then
            getPropertyString model property
          else 
            "-"
  in
  case validProperty of
    False -> emptyShape
    True ->
      group 
      [
        baseClickableBox
        ,
        buildTextShape textString
        |> move ((toFloat (String.length textString) * -1.9) - 0 , -2.2)
        ,
        getFieldName property
          |> buildLabel
          |> move (((toFloat (String.length (getFieldName property))) * -1.1) , 7)
      ]
        |> notifyMouseMoveAt MouseMove
        |> addNonUserShapeCallbacks model (PropertyFieldID (property))
        |> move propertyFieldOffset

getPropertyFromShapeInfo: FloatShapeProperty -> ShapeInfo -> Float
getPropertyFromShapeInfo property info =
  case property of 
    PosX -> Tuple.first info.position
    PosY -> Tuple.second info.position
    Rotation -> info.rotation
    ScaleX -> Tuple.first info.scale
    ScaleY -> Tuple.second info.scale
    OutlineSize -> info.outlineSize 

propertyFloatToString: Model -> NumberShapeProperty -> Maybe Float -> String
propertyFloatToString model property propertyFloat = 
  let 
    decimals = 3
    propertyString =   
      case propertyFloat of 
        Just float ->
          String.fromFloat (roundToDigits decimals float)
            |> stringRoundToDecimals decimals
        Nothing ->
            "-"
  in
  case model.currentAction of 
    TypingInput editProperty input ->
      if editProperty == property then 
        input
      else 
        propertyString
    _ -> 
      propertyString

{-
getFloatPropertyString: Model -> FloatShapeProperty -> List ShapeInfo -> String
getFloatPropertyString model property shapeInfos =
  let 
    decimals = 3
    propertyFloat = 
      List.map (getPropertyFromShapeInfo property) shapeInfos
      |> allEqualFloat
    propertyString =        
      case propertyFloat of 
        Just float ->
          String.fromFloat (roundToDigits decimals float)
            |> stringRoundToDecimals decimals
        Nothing ->
            "-"  
  in
  case model.currentAction of 
    TypingInput editProperty input ->
      if editProperty == FloatShapeProperty property then 
        input
      else 
        propertyString
    _ -> 
      propertyString 
      -}

propertyFieldOffset: (Float, Float)
propertyFieldOffset = (70, -20)

propertyFieldYGap: Float
propertyFieldYGap = -20

propertyFieldXGap: Float
propertyFieldXGap = 35

propertyFieldShapes: Model -> List (Shape Msg)
propertyFieldShapes model = 
  [
  --Rect Properties
    buildPropertyField model (RectProperty RectWidth)
      |> move (propertyFieldXGap * 0, propertyFieldYGap * -3)
    ,
    buildPropertyField model (RectProperty RectHeight)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
    buildPropertyField model (RectProperty Roundness)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
  --Oval Properties
    buildPropertyField model (OvalProperty OvalWidth)
      |> move (propertyFieldXGap * 0, propertyFieldYGap * -3)
    ,
    buildPropertyField model (OvalProperty OvalHeight)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
  --Ngon Properties
    buildPropertyField model (NgonProperty NgonSides)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
    buildPropertyField model (NgonProperty NgonRadius)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
  --Float Shape Properties
    buildPropertyField model (FloatShapeProperty PosX)
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 0)
    ,
    buildPropertyField model (FloatShapeProperty PosY)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 0)
    ,    
    buildPropertyField model (FloatShapeProperty ScaleX)
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 1)
    ,
    buildPropertyField model (FloatShapeProperty ScaleY)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 1)
    ,
    buildPropertyField model (FloatShapeProperty Rotation)
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 2)
    ,
    buildPropertyField model (FloatShapeProperty OutlineSize)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 2)
  ]

type alias ShapeInfo = 
  { position : (Float, Float), 
    rotation : Float, 
    scale : (Float, Float), 
    colour : Color, 
    outlineStyle : Float -> LineType, 
    outlineSize : Float, 
    outlineColour : Color }

defaultShapeInfo : ShapeInfo
defaultShapeInfo = ShapeInfo (0,0) 0 (1,1) red (solid) 1 black

--type EditAction = ColorChange
type alias UserShape = {shapeType : ShapeType, shapeInfo : ShapeInfo, id: Int, isSelected: Bool} 
type alias MouseState = ((Float, Float), Bool) --x, y, isClicked

colors : List Color
colors = [ red, orange, yellow, green, blue, darkBlue, purple, grey, black, white]

selectedOutlineType : (Float -> LineType)
selectedOutlineType = solid
selectedOutlineColour : Color
selectedOutlineColour = green
xOffset : Float
xOffset = -110
maxUndoSteps : Int
maxUndoSteps = 100
snapAmount: Float
snapAmount = 5

addNonUserShapeCallbacks: Model -> ID -> Shape Msg -> Shape Msg
addNonUserShapeCallbacks model id shape =
  notifyMouseMoveAt MouseMove shape
    |> (
    if Tuple.second model.mouseState then
      notifyMouseUpAt (MouseUpAtShape id)
    else 
      notifyMouseDownAt (MouseDownAtShape id)
    )

baseRect : (ShapeType, ShapeInfo)
baseRect = (Rect 19 9 0, {defaultShapeInfo | position = (xOffset, 45)})
   
baseNgon : (ShapeType, ShapeInfo)
baseNgon = (Ngon 5 9, {defaultShapeInfo | position = (xOffset, 10)})

baseOval : (ShapeType, ShapeInfo)
baseOval = (Oval 19 9, {defaultShapeInfo | position = (xOffset, 30)})
       
backgroundHitbox : (ShapeType, ShapeInfo)
backgroundHitbox = (Rect 10000 5000 0, {defaultShapeInfo | position = (xOffset, 45), colour = blank})

--Add bool for snapping
--Add conditon on stop dragging to snap a shape
buildShape: (ShapeType, ShapeInfo) -> Shape Msg
buildShape (shapeType, shapeInfo) =
  let 
    shape = 
      case shapeType of 
        Rect width height roundness ->
          roundedRect width height roundness
        Oval width height ->
          oval width height
        Ngon sides size ->
          ngon sides size
  in
  filled shapeInfo.colour shape
    |> scaleX (Tuple.first shapeInfo.scale)
    |> scaleY (Tuple.second shapeInfo.scale) 
    |> rotate (degrees shapeInfo.rotation * -1)
    |> move shapeInfo.position
    |> addOutline (shapeInfo.outlineStyle shapeInfo.outlineSize) shapeInfo.outlineColour

myShapes: Model -> List (Shape Msg)
myShapes model = 
  [
    buildShape backgroundHitbox
    |> addNonUserShapeCallbacks model BackGround
    ,
    buildShape baseRect
      |> notifyMouseDown (CreateShape baseRect)
      |> addNonUserShapeCallbacks model ShapeButton
    ,
    buildShape baseOval
      |> notifyMouseDown (CreateShape baseOval)
      |> addNonUserShapeCallbacks model ShapeButton
    ,
    buildShape baseNgon
      |> notifyMouseDown (CreateShape baseNgon)
      |> addNonUserShapeCallbacks model ShapeButton
  ]
  ++ 
  (
    buildAndAddCallbacks model model.userShapes
      |> List.map (notifyMouseMoveAt MouseMove) 
  )
  ++
  (
    if List.length model.selectedShapes > 0 then 
      propertyFieldShapes model
    else  
      []
  )

-- Temp Function (Makes the outline colour the selected outline colour)
colourOutline: UserShape -> UserShape
colourOutline userShape = 
  let
    shapeInfo = userShape.shapeInfo
    updatedInfo = {shapeInfo | outlineColour = selectedOutlineColour}
  in
  {userShape | shapeInfo = updatedInfo}

buildAndAddCallbacks: Model -> List UserShape -> List (Shape Msg)
buildAndAddCallbacks model userShapes = 
  let
    toOutlineUserShapes = List.filter (shapeSelected model) userShapes
    outlinedShapesCount = List.length toOutlineUserShapes
    outlineShapeInfos = List.map .shapeInfo toOutlineUserShapes
    outlineSizes = List.map .outlineSize outlineShapeInfos
    outlinedUserShapes = 
      (List.map3 (updateShapeInfoValue) (outlineSizes) (List.repeat outlinedShapesCount (FloatShapeProperty OutlineSize)) toOutlineUserShapes)
        |> List.map colourOutline

    updatedUserShapes = 
      (List.filter (shapeNotSelected model) userShapes) ++ outlinedUserShapes 
  in
  (
  if Tuple.second model.mouseState then
    List.map (buildAndAddCallback notifyMouseUpAt MouseUpAtShape) updatedUserShapes
  else 
    List.map (buildAndAddCallback notifyMouseDownAt MouseDownAtShape) updatedUserShapes
  )
  |> List.map (notifyMouseMoveAt MouseMove) 
   
buildAndAddCallback: (((Float, Float) -> Msg) -> Shape Msg -> Shape Msg) -> (ID -> (Float, Float) -> Msg) -> UserShape -> Shape Msg
buildAndAddCallback callback msg userShape =
  buildShape (userShape.shapeType, userShape.shapeInfo)
  |> addCallBackWithId callback msg userShape.id

addCallBackWithId: (((Float, Float) -> Msg) -> Shape Msg -> Shape Msg) -> (ID -> (Float, Float) -> Msg) -> Int -> Shape Msg -> Shape Msg
addCallBackWithId callback msg id shape = callback (msg (Num id)) shape

shapeSelected: Model -> UserShape -> Bool
shapeSelected model shape = 
  List.member (shape.id) model.selectedShapes

shapeNotSelected: Model -> UserShape -> Bool
shapeNotSelected model shape = 
  not (shapeSelected model shape)

--      Snap Shape
moveShape: (Float, Float) -> UserShape -> UserShape
moveShape moveAmount userShape =
  let
    shapeInfo = userShape.shapeInfo
    updatedInfo : ShapeInfo
    updatedInfo = { shapeInfo | position = (addTuple userShape.shapeInfo.position moveAmount) }
  in
  { userShape | shapeInfo = updatedInfo }

--Edit
changeShapeColor: Color -> UserShape -> UserShape
changeShapeColor newColour userShape =
  let
    shapeInfo = userShape.shapeInfo
    updatedInfo : ShapeInfo
    updatedInfo = { shapeInfo | colour = newColour} 
  in
  { userShape | shapeInfo = updatedInfo }

--Edit
colorShapeList: Color -> List UserShape -> List UserShape
colorShapeList newColor shapes = 
  List.map (changeShapeColor newColor) shapes

defaultKeyboardInfo: Keys -> KeyState
defaultKeyboardInfo _ = Up 

makeModelInfo: Model -> ModelInfo     --Reset mouse data, keyboard data, action to avoid glitches
makeModelInfo model = modelToInfo ({model | mouseState = ((0,0), False), keyboardInfo = defaultKeyboardInfo, currentAction = None })

--In order to undo later
addModelToPrevModels: Model -> List ModelInfo
addModelToPrevModels model = 
   case List.head model.prevModels of
     Just mostRecentPrevModel ->
       if mostRecentPrevModel == makeModelInfo model then
         model.prevModels
       else
         List.take maxUndoSteps model.prevModels
         |> (::) (makeModelInfo model)
     Nothing ->
         List.take maxUndoSteps model.prevModels
         |> (::) (makeModelInfo model)
     
-- Add messages here
type Msg = Tick Float GetKeyState
  |  CreateShape (ShapeType, ShapeInfo)
  |  MouseDownAtShape ID (Float, Float)
  |  MouseMove (Float, Float) 
  |  MouseUpAtShape ID (Float, Float)

undo: Model -> Model
undo model = 
  case List.head model.prevModels of 
    Nothing ->
      model
    Just modelInfo ->
      modelFromInfo modelInfo (List.drop 1 model.prevModels)

--Make a function to assign default values into model??? (probably a good idea)

deleteSelectedShapes: Model -> (Keys -> KeyState) -> Model
deleteSelectedShapes model getKeyStates = 
  { model |  
    keyboardInfo = getKeyStates, 
    prevModels = addModelToPrevModels model, 
    userShapes = List.filter (shapeNotSelected model) model.userShapes 
  }

updateShapeInfoValue: Float -> NumberShapeProperty -> UserShape -> UserShape
updateShapeInfoValue value property userShape = 
  let 
    shapeInfo = userShape.shapeInfo
    shapeType = userShape.shapeType
    updatedInfo =  
      case property of
        FloatShapeProperty floatShapeProperty ->
          case floatShapeProperty of 
          PosX -> {shapeInfo | position = (value, Tuple.second shapeInfo.position)}
          PosY -> {shapeInfo | position = (Tuple.first shapeInfo.position, value)}
          ScaleX -> {shapeInfo | scale = (value, Tuple.second shapeInfo.scale)}
          ScaleY -> {shapeInfo | scale = (Tuple.first shapeInfo.scale, value)}
          Rotation -> {shapeInfo | rotation = value}
          OutlineSize -> {shapeInfo | outlineSize = value}
        _ -> shapeInfo
    updatedShapeType = 
      case shapeType of  
        Rect width height roundness ->
          case property of 
            RectProperty rectProperty -> 
              case rectProperty of 
                RectWidth -> Rect value height roundness
                RectHeight -> Rect width value roundness
                Roundness -> Rect width height value
            _ -> Rect width height roundness
        Oval width height ->
          case property of  
            OvalProperty ovalProperty -> 
              case ovalProperty of 
                OvalWidth -> Oval value height
                OvalHeight -> Oval width value
            _ -> Oval width height
        Ngon sides radius ->
          case property of 
            NgonProperty ngonProperty -> 
              case ngonProperty of 
                NgonSides -> Ngon (max 1 (round value)) radius
                NgonRadius -> Ngon sides value
            _ -> Ngon sides radius

  in 
    {userShape | shapeType = updatedShapeType, shapeInfo = updatedInfo}

tryUpdateShapeInfoWithInput: NumberShapeProperty -> String -> List UserShape -> List UserShape
tryUpdateShapeInfoWithInput property string userShapes =
  let
    updateValue: Float -> UserShape -> UserShape
    updateValue value userShape = 
      updateShapeInfoValue value property userShape 
  in
  case String.toFloat string of
    Just float ->
      List.map (updateValue float) userShapes
    Nothing ->
      userShapes

--UPDATE FUNCTION WITH NEW TYPES
tryUpdateSelectedShapes: Model -> NumberShapeProperty -> String -> List UserShape
tryUpdateSelectedShapes model property string =
  List.filter (shapeSelected model) model.userShapes
    |> tryUpdateShapeInfoWithInput property string 
    |> (++) (List.filter (shapeNotSelected model) model.userShapes) 

updateTypingInput: Model -> (Keys -> KeyState) -> Model  
updateTypingInput model keyInfo =
  let 
    newAction = 
      case model.currentAction of 
        TypingInput property string ->          --Period and minus keys are not supported
          case getKeyCheckFromList (numberKeys ++ [Key "m", Key "p", Delete, Backspace]) [JustDown] keyInfo of 
            Just (Delete) ->
              TypingInput property (String.dropRight 1 string)
            Just (Backspace) ->
              TypingInput property (String.dropRight 1 string)
            Just (Key "m") ->
              TypingInput property (string ++ "-")
            Just (Key "p") ->
              TypingInput property (string ++ ".")
            Just (Key char) ->
              TypingInput property (string ++ char)
            _ -> 
              TypingInput property string
        _ -> 
          model.currentAction
  in
  {model | currentAction = newAction, keyboardInfo = keyInfo}

-- Your update function goes here
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = 
  case msg of
    Tick _ (getKeyStates, _, _) -> 
      ( 
      case model.currentAction of 
        TypingInput property inputStr ->
          if keyPressed getKeyStates Enter then
            { model | userShapes = tryUpdateSelectedShapes model property inputStr, keyboardInfo = getKeyStates, prevModels = addModelToPrevModels model, currentAction = None}
          else
            updateTypingInput model getKeyStates
        _ ->
          if keyPressed getKeyStates Ctrl && getKeyStates (Key "z") == JustDown then
            undo model
          else
            --TODO add clause to avoid this if typing input (and instead delete characters from input)
            if anyKeyPressed [Delete, Backspace] getKeyStates then
              deleteSelectedShapes model (getKeyStates)
            else if anyKeyPressed numberKeys getKeyStates then
              -- recolourSelectedShapes model getKeyStates
              model
            else
              { model | keyboardInfo = getKeyStates }
        
      , Cmd.none )
    CreateShape (shapeType, shapeInfo) -> 
      ( { model | 
            userShapes = 
                UserShape shapeType shapeInfo model.currentShapeID False 
                |> List.singleton
                |> (++) model.userShapes
            ,
            currentShapeID = model.currentShapeID + 1 
            ,
            selectedShapes = [model.currentShapeID]
            ,
            currentAction = Dragging
            ,
            prevModels = addModelToPrevModels model
            }
        , Cmd.none)
    MouseDownAtShape id point ->
      
      ({ model |
            selectedShapes =
              case id of 
                Num value ->
                  if keyPressed model.keyboardInfo Shift then
                    value :: model.selectedShapes 
                  else 
                    [value]
                ShapeButton ->
                  model.selectedShapes
                BackGround ->
                  []
                PropertyFieldID _ -> 
                  model.selectedShapes 
            ,
            currentAction = 
              case id of 
                Num _ ->
                  Dragging
                ShapeButton -> 
                  Dragging
                BackGround ->
                  None
                PropertyFieldID property ->
                  TypingInput property ""
            ,
            userShapes = 
              case model.currentAction of 
                TypingInput property string ->
                  tryUpdateSelectedShapes model property string 
                _ ->
                  model.userShapes
            ,
            prevModels = addModelToPrevModels model
            ,
            mouseState = (point, True)}
        
        , Cmd.none )
    MouseMove point ->
      ({ model |
          userShapes = 
            if Tuple.second model.mouseState && model.currentAction == Dragging then
              --Move Selected Shapes
              List.filter (shapeSelected model) model.userShapes
              |> List.map (moveShape (positionDelta (Tuple.first model.mouseState) point))
              |> (++) (List.filter (shapeNotSelected model) model.userShapes)
            else
              model.userShapes 
          ,
          mouseState = (point, Tuple.second model.mouseState)}
      , Cmd.none )
    MouseUpAtShape _ point ->
      ({ model |
          mouseState = (point, False),
          currentAction = 
            case model.currentAction of
              TypingInput _ _ ->  
                model.currentAction
              _ ->
                None
          ,
          prevModels = addModelToPrevModels model
      } 
      , Cmd.none )

-- This is the type of your model
type alias Model = { currentShapeID : Int,
                     userShapes : List (UserShape),
                     keyboardInfo : (Keys -> KeyState),
                     selectedShapes : List Int,
                     mouseState : MouseState,
                     currentAction : Action,
                     prevModels : List ModelInfo}

--Needed for undo feature
type alias ModelInfo = { currentShapeID : Int,
                         userShapes : List (UserShape),
                         keyboardInfo : (Keys -> KeyState),
                         selectedShapes : List Int,
                         mouseState : MouseState,
                         currentAction : Action}

modelFromInfo: ModelInfo -> List ModelInfo -> Model
modelFromInfo modelInfo prevModels = 
  Model modelInfo.currentShapeID modelInfo.userShapes modelInfo.keyboardInfo modelInfo.selectedShapes modelInfo.mouseState modelInfo.currentAction prevModels

modelToInfo: Model -> ModelInfo
modelToInfo model = 
  ModelInfo model.currentShapeID model.userShapes model.keyboardInfo model.selectedShapes model.mouseState model.currentAction

-- Your initial model goes here
init : Model
init = {currentShapeID = 0, userShapes = [], keyboardInfo = defaultKeyboardInfo, selectedShapes = [], mouseState = ((0, 0), False), currentAction = None, prevModels = [] }

-- Your subscriptions go here
subscriptions : Model -> Sub Msg
subscriptions model = Sub.none

-- Your main function goes here
main : EllieAppWithTick () Model Msg
main = 
  ellieAppWithTick Tick 
    { init = \flags -> (init, Cmd.none)
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- You view function goes here
view : Model -> { title: String, body : Collage Msg }
view model = 
  {
    title = "Shape Creator v0.3"
  , body = collage 250 140 (myShapes model)
  }