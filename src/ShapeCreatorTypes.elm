module ShapeCreatorTypes exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import Platform.Cmd exposing (none)

type Action = Dragging
  | None
  | TypingInput ShapeProperty String
  | Exporting Bool --SelectedShapes only

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

type ShapeProperty = StringProperty StringProperty 
  | NumberShapeProperty NumberShapeProperty

type StringProperty = TextString | OutlineColour | FillColour

type NumberShapeProperty = FloatShapeProperty FloatShapeProperty |
  RectProperty RectProperty |
  OvalProperty OvalProperty |
  NgonProperty NgonProperty |
  TextProperty TextProperty

type FloatShapeProperty = PosX | PosY | Rotation | ScaleX | ScaleY | OutlineSize

type RectProperty = RectWidth | RectHeight | Roundness
type OvalProperty = OvalWidth | OvalHeight
type NgonProperty = NgonSides | NgonRadius
type TextProperty = TextSize

type CombineType = CombToGroup | CombToUnion 

type alias ShapeInfo = 
  { position : (Float, Float), 
    rotation : Float, 
    scale : (Float, Float), 
    fillColour : String, 
    outlineStyle : Float -> LineType, 
    outlineSize : Float, 
    outlineColour : String }

type alias BuildShapeInfo = {snapShape: Bool, addGroupOutline: Bool, selected: Bool}

type alias UserShape = {shapeType : ShapeType, shapeInfo : ShapeInfo, id: Int} 

type alias MouseState = ((Float, Float), Bool) --x, y, isClicked

type Msg = Tick Float GetKeyState
  |  CreateShape (ShapeType, ShapeInfo)
  |  MouseDownAtShape ID (Float, Float)
  |  MouseMove (Float, Float) 
  |  MouseUpAtShape ID (Float, Float)

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