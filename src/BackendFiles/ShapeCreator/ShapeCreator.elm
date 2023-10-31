module BackendFiles.ShapeCreator.ShapeCreator exposing (..)

import BackendFiles.ShapeCreator.ShapeCreatorTypes as T exposing (..)
import BackendFiles.ShapeCreator.ShapesToCode exposing (..)
import BackendFiles.ShapeCreator.ShapeCreatorConstants exposing (..)
import BackendFiles.KeyFunctions exposing (..)
import BackendFiles.HelperFunctions exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import Html exposing (main_)
import Html.Attributes exposing (height)
import Html exposing (th)
import Platform.Cmd exposing (none)
import Debug exposing (todo)
import Dict exposing (Dict)
import Html.Attributes exposing (id)

stringToColour: String -> Color
stringToColour str =
  let
    default = red
  in
  case Dict.get str baseColours of 
    Just col ->
      col
    Nothing ->
      case (String.split " " str |> List.filterMap String.toFloat) of 
        (r::g::b::a::[]) ->
          rgba r g b a
        (r::g::b::[]) ->
          rgb r g b
        _ -> default

userShapeToData: UserShape -> (ShapeType, ShapeInfo)
userShapeToData shape = (shape.shapeType, shape.shapeInfo)

snapShapes: Model -> Bool
snapShapes model = keyPressed model.keyboardInfo Alt

propertyToShapeType: ShapeProperty -> Maybe ShapeTypeOnly
propertyToShapeType property = 
  case property of 
    NumberShapeProperty numberShapeProperty ->
      case numberShapeProperty of 
        OvalProperty _ -> Just OvalT
        RectProperty _ -> Just RectT
        NgonProperty _ -> Just NgonT
        TextProperty _ -> Just TextT
        _ -> Nothing
    StringProperty stringProperty ->
      case stringProperty of 
        TextString -> Just TextT
        _ -> Nothing

shapeTypeOnly: ShapeType -> ShapeTypeOnly
shapeTypeOnly shapeType =
  case shapeType of 
    Rect _ _ _ -> RectT
    Oval _ _ -> OvalT
    Ngon _ _ -> NgonT
    Group _ -> GroupT
    Union _ -> UnionT
    Text _ _ -> TextT

buildTextShape: String -> Shape T.Msg
buildTextShape string = 
  text string
    |> selectable
    |> size propertyFontSize
    |> fixedwidth
    |> centered 
    |> filled black

buildLabel: String -> Shape T.Msg
buildLabel string = 
  text string
    |> size labelFontSize
    |> fixedwidth 
    |> centered
    |> filled black

getFieldName: ShapeProperty -> String
getFieldName property =
  case property of  
    NumberShapeProperty numberShapeProperty ->
      case numberShapeProperty of 
        FloatShapeProperty floatProperty ->
          case floatProperty of 
            PosX -> "X Position"
            PosY -> "Y Position"
            Rotation -> "Rotation"
            ScaleX -> "X Scale"
            ScaleY -> "Y Scale"
            OutlineSize -> "Outline Size"
            Order -> "Order"
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
        TextProperty textProperty ->
          case textProperty of 
            TextSize -> "Font Size"
    StringProperty stringProperty ->
      case stringProperty of  
        TextString -> "Text"
        OutlineColour -> "Outline Colour"
        FillColour -> "Fill Colour"

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
    Text _ size -> 
      case property of  
        TextProperty TextSize -> Just size
        _ -> Nothing
    Group _ ->
      Nothing
    Union _ -> Nothing

getStringProperty: StringProperty -> (ShapeType, ShapeInfo) -> Maybe String
getStringProperty property (shapeType, shapeInfo) =
  case property of 
    OutlineColour ->
      Just shapeInfo.outlineColour
    FillColour ->
      Just shapeInfo.fillColour
    TextString ->
      case shapeType of
        Text str _ -> 
          Just str
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
                                
getPropertyString: Model -> ShapeProperty -> String
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

    selectedShapeDatas = List.map2 Tuple.pair selectedShapeTypes selectedShapeInfos
  in
    case property of 
      NumberShapeProperty numberShapeProperty ->
        case numberShapeProperty of
          FloatShapeProperty floatProperty ->
            List.map (getPropertyFromShapeInfo floatProperty) selectedShapeInfos
              |> allEqualFloat
              |> propertyFloatToString model (FloatShapeProperty floatProperty)
          otherShapeProperty -> 
            List.map (getShapePropertyValue numberShapeProperty) selectedShapeTypes 
              |> allEqualMaybeFloat 
              |> propertyFloatToString model (otherShapeProperty)
      StringProperty stringProperty ->
        case stringProperty of 
          _ ->
            case model.currentAction of 
              TypingInput curProperty str ->
                if property == curProperty then
                  str
                else
                  List.map (getStringProperty stringProperty) selectedShapeDatas
                    |> allEqual
                    |> Maybe.withDefault " "  
              _ ->
                List.map (getStringProperty stringProperty) selectedShapeDatas
                      |> allEqual
                      |> Maybe.withDefault " "             

getOffset: Model -> (Float, Float)
getOffset model =
  if model.currentAction == Dragging && (Tuple.first <| Tuple.first <| model.mouseState) > 300 then
    propertyFieldOffsetLeft
  else
    propertyFieldOffsetRight

--TODO If string is empty then leave current model property in box
  -- Maybe highlight it blue or something
buildPropertyField: Model -> BoxType -> ShapeProperty -> Shape T.Msg
buildPropertyField model boxType property =
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
        NumberShapeProperty (FloatShapeProperty _) -> True
        StringProperty stringProperty ->
          case stringProperty of 
            OutlineColour -> True
            FillColour -> True
            _ -> False
        _ -> False

    textString = 
      case property of 
        NumberShapeProperty numberShapeProperty ->
          case numberShapeProperty of 
            FloatShapeProperty floatProperty ->
              getPropertyString model (property)
            otherProperty ->
              if validProperty then
                getPropertyString model (property)
              else 
                "-"
        StringProperty stringProperty ->
          case stringProperty of 
            TextString -> "Edit"
            _ -> 
              getPropertyString model (property)

  in
  case validProperty of
    False -> emptyShape
    True ->
      group 
      [
        case boxType of 
          Normal -> baseClickableBox
          Wide -> wideClickableBox
        ,
        buildTextShape textString
        |> move (0, -10)
        ,
        getFieldName property
          |> buildLabel
          |> move (0, 35)
      ]
        |> notifyMouseMoveAt MouseMove
        |> addNonUserShapeCallbacks model (PropertyFieldID (property))
        |> move (getOffset model)

getPropertyFromShapeInfo: FloatShapeProperty -> ShapeInfo -> Float
getPropertyFromShapeInfo property info =
  case property of 
    PosX -> Tuple.first info.position
    PosY -> Tuple.second info.position
    Rotation -> info.rotation
    ScaleX -> Tuple.first info.scale
    ScaleY -> Tuple.second info.scale
    OutlineSize -> info.outlineSize 
    Order -> toFloat info.order

propertyFloatToString: Model -> NumberShapeProperty -> Maybe Float -> String
propertyFloatToString model property propertyFloat = 
  let 
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
      if editProperty == NumberShapeProperty property then 
        input
      else 
        propertyString
    _ -> 
      propertyString

propertyFieldShapes: Model -> List (Shape T.Msg)
propertyFieldShapes model = 
  [
  --Rect Properties
    buildPropertyField model Normal (NumberShapeProperty (RectProperty RectWidth))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * -3)
    ,
    buildPropertyField model Normal (NumberShapeProperty (RectProperty RectHeight))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
    buildPropertyField model Normal (NumberShapeProperty (RectProperty Roundness))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
  --Oval Properties
    buildPropertyField model Normal (NumberShapeProperty (OvalProperty OvalWidth))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * -3)
    ,
    buildPropertyField model Normal (NumberShapeProperty (OvalProperty OvalHeight))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
  --Ngon Properties
    buildPropertyField model Normal (NumberShapeProperty (NgonProperty NgonSides))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
    buildPropertyField model Normal (NumberShapeProperty (NgonProperty NgonRadius))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
  --Text Properties
    buildPropertyField model Normal (StringProperty TextString)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
    buildPropertyField model Normal (NumberShapeProperty (TextProperty TextSize))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
  --Float Shape Properties
    buildPropertyField model Normal (NumberShapeProperty (FloatShapeProperty PosX))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 1)
    ,
    buildPropertyField model Normal(NumberShapeProperty (FloatShapeProperty PosY))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 1)
    ,    
    buildPropertyField model Normal (NumberShapeProperty (FloatShapeProperty ScaleX))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 2)
    ,
    buildPropertyField model Normal (NumberShapeProperty (FloatShapeProperty ScaleY))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 2)
    ,
    buildPropertyField model Normal (NumberShapeProperty (FloatShapeProperty Rotation))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 3)
    ,
    buildPropertyField model Normal (NumberShapeProperty (FloatShapeProperty OutlineSize))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 3)
    ,
    buildPropertyField model Normal (NumberShapeProperty (FloatShapeProperty Order))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 4)
    ,
    -- Colour Properties
    buildPropertyField model Wide (StringProperty OutlineColour)
      |> move (propertyFieldXGap * 0.5, propertyFieldYGap * 0)
    ,
    buildPropertyField model Wide (StringProperty FillColour)
      |> move (propertyFieldXGap * 0.5, propertyFieldYGap * -1)
  ]

addNonUserShapeCallbacks: Model -> ID -> Shape T.Msg -> Shape T.Msg
addNonUserShapeCallbacks model id shape =
  notifyMouseMoveAt MouseMove shape
    |> (
    if Tuple.second model.mouseState then
      notifyMouseUpAt (MouseUpAtShape id)
    else 
      notifyMouseDownAt (MouseDownAtShape id)
    )

--Add bool for snapping
--Add conditon on stop dragging to snap a shape
buildShape: BuildShapeInfo -> (ShapeType, ShapeInfo) -> Shape T.Msg
buildShape buildInfo (shapeType, shapeInfo) =
  let 
    shape = 
      case shapeType of 
        Rect width height roundness ->
          roundedRect width height roundness
            |> filled (stringToColour shapeInfo.fillColour) 
        Oval width height ->
          oval width height
            |> filled (stringToColour shapeInfo.fillColour) 
        Ngon sides size ->
          ngon sides size
            |> filled (stringToColour shapeInfo.fillColour) 
        Text str fontSize ->
          text str
            |> size fontSize 
            |> alignLeft
            |> filled (stringToColour shapeInfo.fillColour) 
        Group shapeDatas ->
          List.map (buildShape (BuildShapeInfo False True buildInfo.selected)) shapeDatas
            |> group
        Union shapeDatas ->
          List.map (buildShape (BuildShapeInfo False False False)) shapeDatas
            |> List.foldr union emptyShape

    outlineColour = 
      case buildInfo.selected of 
        False -> shapeInfo.outlineColour
        True ->
          case buildInfo.addGroupOutline of 
            False -> selectedOutlineColour
            True -> groupSelectedOutlineColour
    
    outlineStyle = case buildInfo.selected of 
      False -> shapeInfo.outlineStyle
      True -> selectedOutlineStyle

    outlineSize = 
      case buildInfo.selected of 
        False -> shapeInfo.outlineSize
        True -> max minSelectedOutlineSize shapeInfo.outlineSize

  in
    scaleX (Tuple.first shapeInfo.scale) shape
    |> scaleY (Tuple.second shapeInfo.scale) 
    |> rotate (degrees shapeInfo.rotation * -1)
    |> move 
        (if buildInfo.snapShape then
          roundTupleToNearest snapAmount (shapeInfo.position)
        else 
          shapeInfo.position)
    |>
      case shapeType of 
      Group _ ->
        identity
      _ -> 
        addOutline (outlineStyle outlineSize) (stringToColour outlineColour)

getOrder: UserShape -> Int
getOrder shape =
  shape.shapeInfo.order

buildBaseShapes: Model -> List (Shape T.Msg)
buildBaseShapes model =       
  if model.currentAction == Dragging then
    []
  else
    [
      buildShape defaultBuildInfo baseRect
        |> notifyMouseDown (CreateShape baseRect)
        |> addNonUserShapeCallbacks model ShapeButton
      ,
      buildShape defaultBuildInfo baseOval
        |> notifyMouseDown (CreateShape baseOval)
        |> addNonUserShapeCallbacks model ShapeButton
      ,
      buildShape defaultBuildInfo baseNgon
        |> notifyMouseDown (CreateShape baseNgon)
        |> addNonUserShapeCallbacks model ShapeButton
      , 
      buildShape defaultBuildInfo baseText
        |> notifyMouseDown (CreateShape baseText)
        |> addNonUserShapeCallbacks model ShapeButton
    ]

myShapes: Model -> List (Shape T.Msg)
myShapes model = 
  let
    sortedShapes = List.sortBy (getOrder) model.userShapes 

    userShapes selectedOnly = 
      if selectedOnly then  
        List.filter (shapeSelected model) sortedShapes
      else
        sortedShapes

    shapeData selectedOnly = 
      List.map userShapeToData (userShapes selectedOnly)
    
    backGround = 
      buildShape defaultBuildInfo backgroundHitbox
      |> addNonUserShapeCallbacks model BackGround
      |> List.singleton

  in
  case model.currentAction of
    Exporting selectedOnly ->
      stringToTextShapes (convertShapesToCode CombToGroup 1 (shapeData selectedOnly))
    _ ->
      backGround
      ++
      (
        buildAndAddCallbacks model sortedShapes
          |> List.map (notifyMouseMoveAt MouseMove) 
      )
      ++
      (
        if List.length model.selectedShapes > 0 then 
          propertyFieldShapes model
        else  
          []
      )
      ++
      buildBaseShapes model

-- Temp Function (Makes the outline colour the selected outline colour)
colourOutline: UserShape -> UserShape
colourOutline userShape = 
  let
    shapeInfo = userShape.shapeInfo
    updatedInfo = {shapeInfo | outlineColour = selectedOutlineColour}
  in
  {userShape | shapeInfo = updatedInfo}

buildAndAddCallbacks: Model -> List UserShape -> List (Shape T.Msg)
buildAndAddCallbacks model userShapes = 
  (
  if Tuple.second model.mouseState then
    List.map (buildAndAddCallback model notifyMouseUpAt MouseUpAtShape) userShapes
  else 
    List.map (buildAndAddCallback model notifyMouseDownAt MouseDownAtShape) userShapes
  )
  |> List.map (notifyMouseMoveAt MouseMove) 
   
buildAndAddCallback: Model -> (((Float, Float) -> T.Msg) -> Shape T.Msg -> Shape T.Msg) -> (ID -> (Float, Float) -> T.Msg) -> UserShape -> Shape T.Msg
buildAndAddCallback model callback msg userShape =
  let 
    selected = shapeSelected model userShape
    snapShape = (snapShapes model) && selected
  in
  buildShape (BuildShapeInfo snapShape False selected) (userShape.shapeType, userShape.shapeInfo)
  |> addCallBackWithId callback msg userShape.id

addCallBackWithId: (((Float, Float) -> T.Msg) -> Shape T.Msg -> Shape T.Msg) -> (ID -> (Float, Float) -> T.Msg) -> Int -> Shape T.Msg -> Shape T.Msg
addCallBackWithId callback msg id shape = callback (msg (Num id)) shape

shapeSelected: Model -> UserShape -> Bool
shapeSelected model shape = 
  List.member (shape.id) model.selectedShapes

shapeNotSelected: Model -> UserShape -> Bool
shapeNotSelected model shape = 
  not (shapeSelected model shape)

moveShape: (Float, Float) -> UserShape -> UserShape
moveShape moveAmount userShape =
  let
    shapeInfo = userShape.shapeInfo
    updatedInfo : ShapeInfo
    updatedInfo = { shapeInfo | position = (addTuple userShape.shapeInfo.position moveAmount) }
  in
  { userShape | shapeInfo = updatedInfo }

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

combineSelectedShapes: Model -> CombineType -> Model
combineSelectedShapes model combineType =
  let 
    selectedShapes = List.filter (shapeSelected model) model.userShapes
                       |> List.sortBy getOrder
    
    newId = case List.head selectedShapes of 
      Nothing -> 0
      Just shape -> shape.id

    shapeDatas = List.map2 Tuple.pair (List.map .shapeType selectedShapes) (List.map .shapeInfo selectedShapes)
    
    newShape: UserShape
    newShape = 
      case combineType of 
        CombToGroup ->
          UserShape (Group shapeDatas) {defaultShapeInfo | outlineSize = 2} newId
        CombToUnion ->
          UserShape (Union shapeDatas) {defaultShapeInfo | outlineSize = 2} newId
  in
    if List.length selectedShapes > 1 then
      {model | userShapes = newShape :: List.filter (shapeNotSelected model) model.userShapes}
    else 
      model

undo: Model -> Model
undo model = 
  case List.head model.prevModels of 
    Nothing ->
      model
    Just modelInfo ->
      modelFromInfo modelInfo (List.drop 1 model.prevModels)

snapSelectedShapes: Model -> List UserShape -> List UserShape
snapSelectedShapes model shapes =
  let 
    snapPosition: ShapeInfo -> ShapeInfo
    snapPosition info =
      {info | position = roundTupleToNearest snapAmount info.position}
    
    snapShape: UserShape -> UserShape
    snapShape shape =
      {shape | shapeInfo  = snapPosition (.shapeInfo shape)}
  in 
  (List.filter (shapeSelected model) shapes
    |> List.map snapShape)
  ++ 
  List.filter (shapeNotSelected model) shapes

--Make a function to assign default values into model??? (probably a good idea)
deleteSelectedShapes: Model -> (Keys -> KeyState) -> Model
deleteSelectedShapes model getKeyStates = 
  { model |  
    keyboardInfo = getKeyStates, 
    prevModels = addModelToPrevModels model, 
    userShapes = List.filter (shapeNotSelected model) model.userShapes 
  }

updateShapeString: String -> StringProperty -> UserShape -> UserShape 
updateShapeString newStr stringProperty userShape =
  let 
    shapeType = userShape.shapeType
    updatedShapeType = 
      case shapeType of 
        Text _ size ->
          case stringProperty of 
            TextString -> Text newStr size
            _ -> shapeType
        _ -> shapeType
    
    shapeInfo = userShape.shapeInfo
    updatedShapeInfo = 
      case stringProperty of 
        OutlineColour ->
          {shapeInfo | outlineColour = newStr}
        FillColour ->
          {shapeInfo | fillColour = newStr}
        _ ->
          shapeInfo

  in
  {userShape | shapeType = updatedShapeType, shapeInfo = updatedShapeInfo}

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
          Order -> {shapeInfo | order = round value}
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
            _ -> shapeType
        Oval width height ->
          case property of  
            OvalProperty ovalProperty -> 
              case ovalProperty of 
                OvalWidth -> Oval value height
                OvalHeight -> Oval width value
            _ -> shapeType
        Ngon sides radius ->
          case property of 
            NgonProperty ngonProperty -> 
              case ngonProperty of 
                NgonSides -> Ngon (max 1 (round value)) radius
                NgonRadius -> Ngon sides value
            _ -> shapeType
        Text str size ->
          case property of 
            TextProperty textProperty -> 
              case textProperty of 
                TextSize -> Text str value
            _ -> shapeType
        Group _ ->
          shapeType
        Union _ ->
          shapeType


  in 
    {userShape | shapeType = updatedShapeType, shapeInfo = updatedInfo}

tryUpdateShapeInfoWithInput: ShapeProperty -> String -> List UserShape -> List UserShape
tryUpdateShapeInfoWithInput property string userShapes =
  case property of 
    NumberShapeProperty numberShapeProperty ->
      case String.toFloat string of
        Just float ->
          List.map (updateShapeInfoValue float numberShapeProperty) userShapes
        Nothing ->
          userShapes
    StringProperty stringProperty->
      List.map (updateShapeString string stringProperty) userShapes

tryUpdateSelectedShapes: Model -> ShapeProperty -> String -> List UserShape
tryUpdateSelectedShapes model property string =
  List.filter (shapeSelected model) model.userShapes
    |> tryUpdateShapeInfoWithInput property string 
    |> (++) (List.filter (shapeNotSelected model) model.userShapes) 

updateNumberTypingInput: Model -> (Keys -> KeyState) -> Action
updateNumberTypingInput model keyInfo =
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

updateStringTypingInput: Model -> (Keys -> KeyState) -> Action
updateStringTypingInput model keyInfo =
  case model.currentAction of 
    TypingInput property string ->          --Period and minus keys are not supported
      case getKeyCheckFromList (stringKeys ++ [Delete, Backspace, Space]) [JustDown] keyInfo of 
        Just (Delete) ->
          TypingInput property (String.dropRight 1 string)
        Just (Backspace) ->
          TypingInput property (String.dropRight 1 string)
        Just Space ->
          TypingInput property (string ++ " ")
        Just (Key char) ->
          if keyInfo Shift == Down then
            TypingInput property (string ++ (applyShift char))
          else if keyInfo UpArrow == Down then
            TypingInput property (string ++ (applyUp char))
          --TODO adjust if Alt key is pressed (in order to get period, comma etc)
          else 
            TypingInput property (string ++ char)
        _ -> 
          TypingInput property string
    _ -> 
      model.currentAction

addShapes: Model -> Bool -> List UserShape -> Model
addShapes model copyShapes shapes =
  let 
    startID = model.currentShapeID

    setId: Int -> UserShape -> UserShape
    setId newId shape = 
      {shape | id = newId}

    offset = (snapAmount, snapAmount)   

    updatedCopiedShapes = 
      (List.map2 setId (List.range startID (startID + (List.length shapes) - 1)) shapes
        |> List.map (moveShape offset))

  in
    { model | 
        userShapes = updatedCopiedShapes ++ model.userShapes,
        currentShapeID = model.currentShapeID + (List.length shapes),
        selectedShapes = List.range startID (startID + (List.length shapes)),
        copiedShapes = if copyShapes then updatedCopiedShapes else []
    }

getChildShapes: UserShape -> List (ShapeType, ShapeInfo)
getChildShapes shape =
  case shape.shapeType of 
    Group children -> children
    Union children -> children
    _ -> []

groupOrUnion: UserShape -> Bool
groupOrUnion shape =
  let
    typeOnly = shapeTypeOnly shape.shapeType
  in
    typeOnly == GroupT || typeOnly == UnionT
  
buildUserShapeFromData: Int -> (ShapeType, ShapeInfo) -> UserShape
buildUserShapeFromData id (shapeType, info) =
  UserShape shapeType info id

--Maybe apply reverse of tranformations of union/group so that objects don't move when ungrouped?
splitSelectedShapes: Model -> Model
splitSelectedShapes model = 
  let
    combinedShapes = 
      model.userShapes 
        |> List.filter (shapeSelected model)
        |> List.filter (groupOrUnion) 
      
    childShapes =
      List.map getChildShapes combinedShapes 
        |> List.foldr (++) [] 

    combinedShapeIds = List.map .id combinedShapes

    newIds = List.range model.currentShapeID (model.currentShapeID + (List.length childShapes) - 1)

  in
    { model | userShapes = 
      (List.map2 (buildUserShapeFromData) newIds childShapes)
      ++
      (model.userShapes 
        |> List.filter (\shape -> not (List.member shape.id combinedShapeIds)))
      ,
      currentShapeID = model.currentShapeID + (List.length childShapes)
    }
  
updateTick: Model -> (Keys -> KeyState) -> Model
updateTick model getKeyStates =
  let 
    savedModel = {model | prevModels = addModelToPrevModels model}
  in
  case model.currentAction of 
    Exporting _ ->
      if getKeyStates (Key "e") == JustDown then  
        { savedModel | currentAction = None }
      else 
        model
    TypingInput property inputStr ->
      if keyPressed getKeyStates Enter then
        { savedModel | userShapes = tryUpdateSelectedShapes model property inputStr, currentAction = None}
      else
        case property of 
          StringProperty TextString ->
            { savedModel | userShapes = tryUpdateSelectedShapes model property inputStr, currentAction = updateStringTypingInput savedModel getKeyStates}
          StringProperty _ ->
            { savedModel | currentAction = updateStringTypingInput savedModel getKeyStates}
          _ ->
            { savedModel | currentAction = updateNumberTypingInput model getKeyStates }
    _ ->
      -- Undo
      if keyPressed getKeyStates Ctrl && getKeyStates (Key "z") == JustDown then
        undo model
      -- Combine: Group
      else if getKeyStates (Key "g") == JustDown then
        combineSelectedShapes savedModel CombToGroup
      -- Combine: Union
      else if getKeyStates (Key "u") == JustDown then
        combineSelectedShapes savedModel CombToUnion
      else if getKeyStates (Key "s") == JustDown then
        splitSelectedShapes model   
      -- Copy
      else if keyPressed getKeyStates Ctrl && getKeyStates (Key "c") == JustDown then
        {savedModel | copiedShapes = List.filter (shapeSelected model) model.userShapes} 
      -- Paste
      else if keyPressed getKeyStates Ctrl && getKeyStates (Key "v") == JustDown then
        addShapes savedModel True model.copiedShapes
      -- Export Mode 
      else if getKeyStates (Key "e") == JustDown then
        { savedModel | currentAction = Exporting (getKeyStates UpArrow == Down) }
      -- Delete Selected Shapes
      else if anyKeyPressed [Delete, Backspace] getKeyStates then
          deleteSelectedShapes savedModel (getKeyStates)
      else
        model

-- Your update function goes here
update : T.Msg -> Model -> ( Model, Cmd T.Msg )
update msg model = 
  case msg of
    Tick _ (getKeyStates, _, _) -> 
      (updateTick ({ model | keyboardInfo = getKeyStates }) getKeyStates, Cmd.none )

    CreateShape (shapeType, shapeInfo) -> 
      ( { model | 
            userShapes = 
                UserShape shapeType shapeInfo model.currentShapeID 
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
                  case property of 
                    StringProperty TextString ->
                      TypingInput property (getPropertyString model property)
                    _ ->
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
          prevModels = addModelToPrevModels model,
          userShapes = case snapShapes model of 
            True -> snapSelectedShapes model model.userShapes
            False -> model.userShapes
      } 
      , Cmd.none )

modelFromInfo: ModelInfo -> List ModelInfo -> Model
modelFromInfo modelInfo prevModels = 
  Model modelInfo.currentShapeID modelInfo.userShapes modelInfo.keyboardInfo modelInfo.selectedShapes modelInfo.mouseState modelInfo.currentAction modelInfo.copiedShapes prevModels

modelToInfo: Model -> ModelInfo
modelToInfo model = 
  ModelInfo model.currentShapeID model.userShapes model.keyboardInfo model.selectedShapes model.mouseState model.currentAction model.copiedShapes

-- Your initial model goes here
init : Model
init = {currentShapeID = 0, userShapes = [], keyboardInfo = defaultKeyboardInfo, selectedShapes = [], mouseState = ((0, 0), False), currentAction = None, prevModels = [], copiedShapes = [] }

-- Your subscriptions go here
subscriptions : Model -> Sub T.Msg
subscriptions model = Sub.none

-- Your main function goes here
main : EllieAppWithTick () Model T.Msg
main = 
  ellieAppWithTick Tick 
    { init = \flags -> (init, Cmd.none)
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- You view function goes here
view : Model -> { title: String, body : Collage T.Msg }
view model = 
  {
    title = "Shape Creator v0.3"
  , body = collage 1920 1080 (myShapes model)
  }