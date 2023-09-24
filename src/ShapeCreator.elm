module ShapeCreator exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

import KeyFunctions exposing (..)
import HelperFunctions exposing (..)
import Html exposing (main_)

--TODO Add function descriptions

type Action = Dragging
  | None
  | TypingInput FloatShapeProperty String

type ID = Num Int
  | ShapeButton
  | BackGround
  | PropertyFieldID FloatShapeProperty

-- Takes in one Float for each parameter to build the shape
type ShapeType = Rect Float Float Float
  |  Oval Float Float
  |  Ngon Int Float

type FloatShapeProperty = PosX | PosY | Rotation | ScaleX | ScaleY | OutlineSize

type alias PropertyEditorField = { text : String, property : FloatShapeProperty }

baseClickableBox = 
  roundedRect 25 10 2
  |> filled white
  |> addOutline (solid 1) blue

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

getFieldName: FloatShapeProperty -> String
getFieldName property =
  case property of 
    PosX -> "X Position"
    PosY -> "Y Position"
    Rotation -> "Rotation"
    ScaleX -> "X Scale"
    ScaleY -> "Y Scale"
    OutlineSize -> "Outline Size"

--TODO If string is empty then leave current model property in box
  -- Maybe highlight it blue or something
buildPropertyField: Model -> FloatShapeProperty -> Shape Msg
buildPropertyField model property =
  let 
    selectedShapeInfos = 
      model.userShapes
        |> List.filter (shapeSelected model)
        |> List.map .shapeInfo
    textString = getPropertyString model property selectedShapeInfos
  in
  group 
  [
    baseClickableBox
    ,
    buildTextShape textString
    |> move ((toFloat (String.length textString) * -1.9) - 0 , -2.2)
    ,
    getFieldName property
      |> buildLabel
      |> move (((toFloat (String.length (getFieldName property)) * -1.1)) , 7)
  ]
    |> notifyMouseMoveAt MouseMove
    |> addNonUserShapeCallbacks model (PropertyFieldID property)
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

getPropertyString: Model -> FloatShapeProperty -> List ShapeInfo -> String
getPropertyString model property shapeInfos =
  let 
    propertyFloat = 
      List.map (getPropertyFromShapeInfo property) shapeInfos
      |> allEqualFloat
    propertyString =        
      case propertyFloat of 
        Just float ->
          String.fromFloat (roundToDigits 2 float)
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

propertyFieldOffset: (Float, Float)
propertyFieldOffset = (77, -20)

propertyFieldYGap: Float
propertyFieldYGap = -20

propertyFieldXGap: Float
propertyFieldXGap = 30

propertyFieldShapes: Model -> List (Shape Msg)
propertyFieldShapes model = 
  [
    buildPropertyField model PosX
    |> move (propertyFieldXGap * 0, propertyFieldYGap * 0)
    ,
    buildPropertyField model PosY
    |> move (propertyFieldXGap * 1, propertyFieldYGap * 0)
    ,    
    buildPropertyField model ScaleX
    |> move (propertyFieldXGap * 0, propertyFieldYGap * 1)
    ,
    buildPropertyField model ScaleY
    |> move (propertyFieldXGap * 1, propertyFieldYGap * 1)
    ,
    buildPropertyField model Rotation
    |> move (propertyFieldXGap * 0, propertyFieldYGap * 2)
    ,
    buildPropertyField model OutlineSize
    |> move (propertyFieldXGap * 1, propertyFieldYGap * 2)

  ]

type alias ShapeInfo = {position : (Float, Float), rotation : Float, scale : (Float, Float), colour : Color, outlineStyle : Float -> LineType, outlineSize : Float, outlineColour : Color }

defaultShapeInfo : ShapeInfo
defaultShapeInfo = ShapeInfo (0,0) 0 (1,1) red (solid) 1 black

--type EditAction = ColorChange
type alias UserShape = {shapeType : ShapeType, shapeInfo : ShapeInfo, id: Int, isSelected: Bool} 
type alias MouseState = ((Float, Float), Bool) --x, y, isClicked

colors : List Color
colors = [ red, orange, yellow, green, blue, darkBlue, purple, grey, black, white]

selectedOutlineType : LineType
selectedOutlineType = solid 1
selectedOutlineColour : Color
selectedOutlineColour = green
xOffset : Float
xOffset = -110
maxUndoSteps : Int
maxUndoSteps = 100

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
    |> rotate (degrees shapeInfo.rotation)
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
  (--Non Outlined Shapes
    List.filter (shapeNotSelected model) model.userShapes
      |> buildAndAddCallbacks model
      |> List.map (notifyMouseMoveAt MouseMove) 
  )
  ++
  (--Outlined Shapes 
    List.filter (shapeSelected model) model.userShapes
    |> buildAndAddCallbacks model
    |> List.map (addOutline selectedOutlineType selectedOutlineColour)
  )
  ++
  (
    if List.length model.selectedShapes > 0 then 
      propertyFieldShapes model
    else  
      []
  )

buildAndAddCallbacks: Model -> List UserShape -> List (Shape Msg)
buildAndAddCallbacks model userShapes = 
  (
  if Tuple.second model.mouseState then
    List.map (buildAndAddCallback notifyMouseUpAt MouseUpAtShape) userShapes
  else 
    List.map (buildAndAddCallback notifyMouseDownAt MouseDownAtShape) userShapes
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

--Edit
moveShape: (Float, Float) -> UserShape -> UserShape
moveShape moveAmount userShape =
  let
    shapeInfo = userShape.shapeInfo
    updatedInfo : ShapeInfo
    updatedInfo = { shapeInfo | position = (addTuple userShape.shapeInfo.position moveAmount)} 
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

deleteSelectedShapes: Model -> Float -> (Keys -> KeyState) -> Model
deleteSelectedShapes model t getKeyStates= 
  { model |  
    keyboardInfo = getKeyStates, 
    prevModels = addModelToPrevModels model, 
    userShapes = List.filter (shapeNotSelected model) model.userShapes 
  }


recolourSelectedShapes: Model -> Float -> (Keys -> KeyState) -> Model
recolourSelectedShapes model t getKeyStates = 
  model
{-
  { model | 
  time = t, 
  keyboardInfo = getKeyStates, 
  prevModels = addModelToPrevModels model, 
  userShapes =
  List.filter (shapeSelected model) model.userShapes
    |> colorShapeList 
      (
      List.drop (getKeyCheckFromList numberKeys [JustDown] getKeyStates) colors
      |> List.head
      |> Maybe.withDefault red
      )
    |> (++) (List.filter (shapeNotSelected model) model.userShapes) }
-}

updateShapeInfoValue: Float -> FloatShapeProperty -> UserShape -> ShapeInfo
updateShapeInfoValue value property userShape = 
  let 
    shapeInfo = userShape.shapeInfo
  in
  case property of
    PosX -> {shapeInfo | position = (value, Tuple.second shapeInfo.position)}
    PosY -> {shapeInfo | position = (Tuple.first shapeInfo.position, value)}
    ScaleX -> {shapeInfo | scale = (value, Tuple.second shapeInfo.scale)}
    ScaleY -> {shapeInfo | scale = (Tuple.first shapeInfo.scale, value)}
    Rotation -> {shapeInfo | rotation = value}
    OutlineSize -> {shapeInfo | outlineSize = value}

tryUpdateShapeInfoWithInput: FloatShapeProperty -> String -> List UserShape -> List UserShape
tryUpdateShapeInfoWithInput property string userShapes =
  let
    updateValue: Float -> UserShape -> UserShape
    updateValue value userShape = 
      {userShape | shapeInfo = updateShapeInfoValue value property userShape }
  in
  case String.toFloat string of
    Just float ->
      List.map (updateValue float) userShapes
    Nothing ->
      userShapes

tryUpdateSelectedShapes: Model -> FloatShapeProperty -> String -> List UserShape
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
    Tick t (getKeyStates, _, _) -> 
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
              deleteSelectedShapes model t (getKeyStates)
            else if anyKeyPressed numberKeys getKeyStates then
              recolourSelectedShapes model t getKeyStates
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
                PropertyFieldID property ->
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