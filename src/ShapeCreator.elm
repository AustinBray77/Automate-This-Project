module ShapeCreator exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import KeyFunctions exposing (..)
import HelperFunctions exposing (..)
import Html exposing (main_)
import Html.Attributes exposing (height)
import Html exposing (th)
import Platform.Cmd exposing (none)

--TODO Add function descriptions

type Action = Dragging
  | None
  | TypingInput ShapeProperty String
  | Exporting 

type ID = Num Int
  | ShapeButton
  | BackGround
  | PropertyFieldID ShapeProperty

type ShapeTypeOnly = RectT | OvalT | NgonT | GroupT | UnionT | TextT

-- Takes in one Float for each parameter to build the shape
type ShapeType = Rect Float Float Float
  |  Oval Float Float
  |  Ngon Int Float
  |  Group (List (ShapeType, ShapeInfo))
  |  Union (List (ShapeType, ShapeInfo))
  |  Text String Float 

{-
type alias TextData = {underlined: Bool, bold: Bool, italic: Bool, strikethrough: Bool}
type TextAlign = Left | Center | Right -}

type RectProperty = RectWidth | RectHeight | Roundness
type OvalProperty = OvalWidth | OvalHeight
type NgonProperty = NgonSides | NgonRadius
type TextProperty = TextSize

type FloatShapeProperty = PosX | PosY | Rotation | ScaleX | ScaleY | OutlineSize
type NumberShapeProperty = FloatShapeProperty FloatShapeProperty |
  RectProperty RectProperty |
  OvalProperty OvalProperty |
  NgonProperty NgonProperty |
  TextProperty TextProperty
-- type ColourShapeProperty = OutlineColour | FillColour
-- type ShapeProperty = ColourShapeProperty | NumberShapeProperty
type ShapeProperty = StringProperty StringProperty | NumberShapeProperty NumberShapeProperty
type CombineType = CombToGroup | CombToUnion 
type StringProperty = TextString

userShapeToData: UserShape -> (ShapeType, ShapeInfo)
userShapeToData shape = (shape.shapeType, shape.shapeInfo)

getTabs: Int -> String
getTabs number =
    String.repeat number "  "

snapShapes: Model -> Bool
snapShapes model = keyPressed model.keyboardInfo Alt

addToEnd: appendable -> appendable -> appendable
addToEnd second first =
  first ++ second

convertShapesToCode: CombineType -> Int -> List (ShapeType, ShapeInfo) -> String
convertShapesToCode combineType tabs shapeDatas =
  let 
    shapePropertiesCode: Int -> ShapeType -> ShapeInfo -> String
    shapePropertiesCode tabs3 shapeType info = 
      [
        ["scaleX", String.fromFloat (Tuple.first info.scale)],
        ["scaleY", String.fromFloat (Tuple.second info.scale)],
        ["rotate", "(degrees", String.fromFloat (info.rotation * -1), ")"],
        ["move", tupleToString info.position]
      ]
        |> (
          case shapeType of 
            Group _ ->
              identity
            Text _ _ ->
              ["addOutline", "(solid ", String.fromFloat info.outlineSize, ")" , "purple"]
                |> List.singleton
                |> addToEnd
            _ ->
              ["addOutline", "(solid ", String.fromFloat info.outlineSize, ")" , "black"]
                |> List.singleton
                |> addToEnd
          )
        --Change later to have custom rgba colours
        |> List.map (List.intersperse " ") -- L L S
        |> List.map ((++) ["|> "])           -- L L S
        |> List.map ((++) [(getTabs tabs3)]) -- L L S
        |> List.map (List.foldr (++) "")   -- L L S -> L S
        |> List.intersperse "\n"           -- L S
        |> List.foldr (++) ""              -- L S -> S

    defaultFill tabs5 = ["\n", (getTabs tabs5), "|>", "filled", "red"]

    shapeCode: Int -> (ShapeType, ShapeInfo) -> String
    shapeCode tabs2 (shapeType, shapeInfo) = 
      (case shapeType of
        Rect width height radius ->
          ["roundedRect", String.fromFloat width, String.fromFloat height, String.fromFloat radius]
          ++ defaultFill tabs2
            |> formatList tabs2
        Oval width height -> 
          ["oval", String.fromFloat width, String.fromFloat height]
            ++ defaultFill tabs2
            |> formatList tabs2
        Ngon sides radius -> 
          ["ngon", String.fromInt sides, String.fromFloat radius]
            ++ defaultFill tabs2
            |> formatList tabs2
        Text str size ->
          ["text", "\"" ++ str  ++ "\""]
            |> addToEnd ["\n", (getTabs tabs2), "|>", "size", String.fromFloat size]
            |> addToEnd ["\n", (getTabs tabs2), "|>", "alignLeft"]
            |> addToEnd ["\n", (getTabs tabs2), "|>", "filled", "black"]
            |> formatList tabs2
        Group groupedShapes ->
          convertShapesToCode CombToGroup (tabs2 + 1) groupedShapes ++ "\n"
        Union unionedShapes ->
          convertShapesToCode CombToUnion (tabs2 + 1) unionedShapes ++ "\n")
        ++ 
        shapePropertiesCode (tabs2 + 1) shapeType shapeInfo

    formatList tabs4 list = 
        (List.intersperse " " list
          |> List.foldr (++) ""
          |> (++) (getTabs tabs4))
        ++ "\n"
  in
  (case combineType of 
    CombToGroup ->
      ([getTabs tabs, "group", "\n", getTabs tabs, "["]
          |> List.foldr (++) "")
    CombToUnion -> 
      ([getTabs tabs, "List.foldr union (rect 0 0 |> ghost)", "\n", getTabs tabs, "["]
        |> List.foldr (++) ""))
    ++
    (List.map (shapeCode (tabs + 1)) shapeDatas
      |> List.intersperse ("\n" ++ (getTabs (tabs + 1)) ++ ",\n")
      |> List.foldr (++) ""
      |> (++) "\n" 
      |> (++) (getTabs tabs))
     ++ "\n" ++ (getTabs tabs) ++ "]"

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

shapeTypeOnly: ShapeType -> ShapeTypeOnly
shapeTypeOnly shapeType =
  case shapeType of 
    Rect _ _ _ -> RectT
    Oval _ _ -> OvalT
    Ngon _ _ -> NgonT
    Group _ -> GroupT
    Union _ -> UnionT
    Text _ _ -> TextT

emptyShape: Shape Msg
emptyShape = (rect 0 0 |> ghost)

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

getStringProperty: StringProperty -> ShapeType -> Maybe String
getStringProperty property shapeType =
  case shapeType of
    Text str _ -> 
      case property of 
        TextString ->
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
          TextString ->
            List.map (getStringProperty stringProperty) selectedShapeTypes
              |> allEqual
              |> Maybe.withDefault " " 

--TODO If string is empty then leave current model property in box
  -- Maybe highlight it blue or something
buildPropertyField: Model -> ShapeProperty -> Shape Msg
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
        NumberShapeProperty (FloatShapeProperty _) -> True
        _ -> False

    textString = 
      case property of 
        NumberShapeProperty numberShapeProperty ->
          case numberShapeProperty of 
            FloatShapeProperty floatProperty ->
              getPropertyString model (NumberShapeProperty numberShapeProperty)
            otherProperty ->
              if validProperty then
                getPropertyString model (NumberShapeProperty numberShapeProperty)
              else 
                "-"
        StringProperty stringProperty ->
          case stringProperty of 
            TextString -> "Edit"
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
      if editProperty == NumberShapeProperty property then 
        input
      else 
        propertyString
    _ -> 
      propertyString

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
    buildPropertyField model (NumberShapeProperty (RectProperty RectWidth))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * -3)
    ,
    buildPropertyField model (NumberShapeProperty (RectProperty RectHeight))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
    buildPropertyField model (NumberShapeProperty (RectProperty Roundness))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
  --Oval Properties
    buildPropertyField model (NumberShapeProperty (OvalProperty OvalWidth))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * -3)
    ,
    buildPropertyField model (NumberShapeProperty (OvalProperty OvalHeight))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
  --Ngon Properties
    buildPropertyField model (NumberShapeProperty (NgonProperty NgonSides))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
    buildPropertyField model (NumberShapeProperty (NgonProperty NgonRadius))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
  --Text Properties
    buildPropertyField model (StringProperty TextString)
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -3)
    ,
    buildPropertyField model (NumberShapeProperty (TextProperty TextSize))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * -2)
    ,
  --Float Shape Properties
    buildPropertyField model (NumberShapeProperty (FloatShapeProperty PosX))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 0)
    ,
    buildPropertyField model (NumberShapeProperty (FloatShapeProperty PosY))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 0)
    ,    
    buildPropertyField model (NumberShapeProperty (FloatShapeProperty ScaleX))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 1)
    ,
    buildPropertyField model (NumberShapeProperty (FloatShapeProperty ScaleY))
      |> move (propertyFieldXGap * 1, propertyFieldYGap * 1)
    ,
    buildPropertyField model (NumberShapeProperty (FloatShapeProperty Rotation))
      |> move (propertyFieldXGap * 0, propertyFieldYGap * 2)
    ,
    buildPropertyField model (NumberShapeProperty (FloatShapeProperty OutlineSize))
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
type alias UserShape = {shapeType : ShapeType, shapeInfo : ShapeInfo, id: Int} 
type alias MouseState = ((Float, Float), Bool) --x, y, isClicked

colors : List Color
colors = [ red, orange, yellow, green, blue, darkBlue, purple, grey, black, white]

selectedOutlineType : (Float -> LineType)
selectedOutlineType = solid
selectedOutlineColour : Color
selectedOutlineColour = green
groupSelectedOutlineColour = blue 
xOffset : Float
xOffset = -110
maxUndoSteps : Int
maxUndoSteps = 50
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

baseText: (ShapeType, ShapeInfo)
baseText = (Text "Text" 9, {defaultShapeInfo | position = (xOffset - 9, 58), outlineSize = 0.3 ,outlineColour = purple})

backgroundHitbox : (ShapeType, ShapeInfo)
backgroundHitbox = (Rect 10000 5000 0, {defaultShapeInfo | position = (xOffset, 45), colour = blank})

type alias BuildShapeInfo = {snapShape: Bool, addGroupOutline: Bool, selected: Bool}

--Add bool for snapping
--Add conditon on stop dragging to snap a shape
buildShape: BuildShapeInfo -> (ShapeType, ShapeInfo) -> Shape Msg
buildShape buildInfo (shapeType, shapeInfo) =
  let 
    shape = 
      case shapeType of 
        Rect width height roundness ->
          roundedRect width height roundness
            |> filled shapeInfo.colour 
        Oval width height ->
          oval width height
            |> filled shapeInfo.colour 
        Ngon sides size ->
          ngon sides size
            |> filled shapeInfo.colour 
        Text str fontSize ->
          text str
            |> size fontSize 
            |> alignLeft
            |> filled black
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
          addOutline (shapeInfo.outlineStyle shapeInfo.outlineSize) outlineColour

stringToTextShapes: String -> List (Shape Msg)
stringToTextShapes string =
  String.split "\n" string
    |> List.map (\str -> text str)
    |> List.map (size 4)
    |> List.map selectable
    |> List.map (filled black)
    |> List.indexedMap (\index shape -> move (-80, toFloat(60 - index * 4))shape)

myShapes: Model -> List (Shape Msg)
myShapes model = 
  let
    defaultBuildInfo = BuildShapeInfo False False False
  in
  if model.currentAction == Exporting then
    stringToTextShapes (convertShapesToCode CombToGroup 1 (List.map userShapeToData model.userShapes))
  else
    [
      buildShape defaultBuildInfo backgroundHitbox
      |> addNonUserShapeCallbacks model BackGround
      ,
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
  (
  if Tuple.second model.mouseState then
    List.map (buildAndAddCallback model notifyMouseUpAt MouseUpAtShape) userShapes
  else 
    List.map (buildAndAddCallback model notifyMouseDownAt MouseDownAtShape) userShapes
  )
  |> List.map (notifyMouseMoveAt MouseMove) 
   
buildAndAddCallback: Model -> (((Float, Float) -> Msg) -> Shape Msg -> Shape Msg) -> (ID -> (Float, Float) -> Msg) -> UserShape -> Shape Msg
buildAndAddCallback model callback msg userShape =
  let 
    selected = shapeSelected model userShape
    snapShape = (snapShapes model) && selected
  in
  buildShape (BuildShapeInfo snapShape False selected) (userShape.shapeType, userShape.shapeInfo)
  |> addCallBackWithId callback msg userShape.id

addCallBackWithId: (((Float, Float) -> Msg) -> Shape Msg -> Shape Msg) -> (ID -> (Float, Float) -> Msg) -> Int -> Shape Msg -> Shape Msg
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

combineSelectedShapes: Model -> CombineType -> Model
combineSelectedShapes model combineType =
  let 
    selectedShapes = List.filter (shapeSelected model) model.userShapes
    
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
  in
  {userShape | shapeType = updatedShapeType}

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

--UPDATE FUNCTION WITH NEW TYPES
tryUpdateSelectedShapes: Model -> ShapeProperty -> String -> List UserShape
tryUpdateSelectedShapes model property string =
  List.filter (shapeSelected model) model.userShapes
    |> tryUpdateShapeInfoWithInput property string 
    |> (++) (List.filter (shapeNotSelected model) model.userShapes) 

updateNumberTypingInput: Model -> (Keys -> KeyState) -> Model
updateNumberTypingInput model keyInfo =
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
  {model | currentAction = newAction}

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
          --TODO adjust if Alt key is pressed (in order to get period, comma etc)
          else 
            TypingInput property (string ++ char)
        _ -> 
          TypingInput property string
    _ -> 
      model.currentAction

pasteShapes: Model -> List UserShape -> Model
pasteShapes model shapes =
  let 
    startID = model.currentShapeID + 1

    setId: Int -> UserShape -> UserShape
    setId newId shape = 
      {shape | id = newId}

    offset = (snapAmount, snapAmount)   

    updatedCopiedShapes = 
      (List.map2 setId (List.range startID (startID + (List.length shapes))) shapes
        |> List.map (moveShape offset))

  in
    { model | 
        userShapes = updatedCopiedShapes ++ model.userShapes,
        currentShapeID = model.currentShapeID + (List.length shapes) + 1,
        selectedShapes = List.range startID (startID + (List.length shapes)),
        copiedShapes = updatedCopiedShapes
    }

updateTick: Model -> (Keys -> KeyState) -> Model
updateTick model getKeyStates =
  let 
    savedModel = {model | prevModels = addModelToPrevModels model}
  in
  case model.currentAction of 
    Exporting ->
      if getKeyStates (Key "e") == JustDown then  
        { savedModel | currentAction = None }
      else 
        model
    TypingInput property inputStr ->
      case property of 
        NumberShapeProperty _ ->
          if keyPressed getKeyStates Enter then
            { savedModel | userShapes = tryUpdateSelectedShapes model property inputStr, currentAction = None}
          else
            updateNumberTypingInput model getKeyStates
        StringProperty _ ->
          if keyPressed getKeyStates Enter then
            { savedModel | userShapes = tryUpdateSelectedShapes model property inputStr, currentAction = None}
          else
            { savedModel | userShapes = tryUpdateSelectedShapes model property inputStr, currentAction = updateStringTypingInput savedModel getKeyStates}
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
      -- Copy
      else if keyPressed getKeyStates Ctrl && getKeyStates (Key "c") == JustDown then
        {savedModel | copiedShapes = List.filter (shapeSelected model) model.userShapes} 
      -- Paste
      else if keyPressed getKeyStates Ctrl && getKeyStates (Key "v") == JustDown then
        pasteShapes savedModel model.copiedShapes
      -- Export Mode 
      else if getKeyStates (Key "e") == JustDown then
        { savedModel | currentAction = Exporting }
      -- Delete Selected Shapes
      else if anyKeyPressed [Delete, Backspace] getKeyStates then
          deleteSelectedShapes savedModel (getKeyStates)
      else
        model

-- Your update function goes here
update : Msg -> Model -> ( Model, Cmd Msg )
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
                    NumberShapeProperty _ ->
                      TypingInput property ""
                    StringProperty _ ->
                      TypingInput property (getPropertyString model property)
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

-- This is the type of your model
type alias Model = 
  {
    currentShapeID : Int,
    userShapes : List (UserShape),
    keyboardInfo : (Keys -> KeyState),
    selectedShapes : List Int,
    mouseState : MouseState,
    currentAction : Action,
    copiedShapes : List (UserShape),
    prevModels : List ModelInfo
  }

--Needed for undo feature
type alias ModelInfo = 
  { 
    currentShapeID : Int,
    userShapes : List (UserShape),
    keyboardInfo : (Keys -> KeyState),
    selectedShapes : List Int,
    mouseState : MouseState,
    currentAction : Action,
    copiedShapes : List (UserShape)
  }

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