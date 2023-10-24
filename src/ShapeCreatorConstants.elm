module ShapeCreatorConstants exposing (..)

import Dict exposing (Dict)
import GraphicSVG exposing (..)
import ShapeCreatorTypes as T exposing (..)

emptyShape: Shape T.Msg
emptyShape = (rect 0 0 |> ghost)

baseClickableBox : Shape T.Msg
baseClickableBox = 
  roundedRect 30 10 1.5
  |> filled white
  |> addOutline (solid 0.75) blue

propertyFieldOffset: (Float, Float)
propertyFieldOffset = (70, -20)

propertyFieldYGap: Float
propertyFieldYGap = -20

propertyFieldXGap: Float
propertyFieldXGap = 35

defaultShapeInfo : ShapeInfo
defaultShapeInfo = ShapeInfo (0,0) 0 (1,1) "red" (solid) 1 "black"

selectedOutlineStyle : (Float -> LineType)
selectedOutlineStyle = dashed
selectedOutlineColour : String
selectedOutlineColour = "green"
groupSelectedOutlineColour: String
groupSelectedOutlineColour = "blue"
xOffset : Float   
xOffset = -110
maxUndoSteps : Int
maxUndoSteps = 50
snapAmount: Float
snapAmount = 5

baseRect : (ShapeType, ShapeInfo)
baseRect = (Rect 19 9 0, {defaultShapeInfo | position = (xOffset, 45)})
   
baseNgon : (ShapeType, ShapeInfo)
baseNgon = (Ngon 5 9, {defaultShapeInfo | position = (xOffset, 10)})

baseOval : (ShapeType, ShapeInfo)
baseOval = (Oval 19 9, {defaultShapeInfo | position = (xOffset, 30)})

baseText: (ShapeType, ShapeInfo)
baseText = (Text "Text" 9, {defaultShapeInfo | position = (xOffset - 9, 58), outlineSize = 0.3, fillColour = "black", outlineColour = "blue"})

backgroundHitbox : (ShapeType, ShapeInfo)
backgroundHitbox = (Rect 10000 5000 0, {defaultShapeInfo | position = (xOffset, 45), fillColour = "blank"})

minSelectedOutlineSize: Float
minSelectedOutlineSize = 0.3

baseColours: Dict String Color
baseColours = 
  Dict.fromList 
    [
    ("black", black),
    ("blank", blank),
    ("blue", blue),
    ("brown", brown),
    ("charcoal", charcoal),
    ("dark blue", darkBlue),
    ("dark brown", darkBrown),
    ("dark charcoal", darkCharcoal),
    ("dark gray", darkGray),
    ("dark green", darkGreen),
    ("dark grey", darkGrey),
    ("dark orange", darkOrange),
    ("dark purple", darkPurple),
    ("dark red", darkRed),
    ("dark yellow", darkYellow),
    ("gray", gray),
    ("green", green),
    ("grey", grey),
    ("hot pink", hotPink),
    ("light blue", lightBlue),
    ("light brown", lightBrown),
    ("light charcoal", lightCharcoal),
    ("light gray", lightGray),
    ("light green", lightGreen),
    ("light grey", lightGrey),
    ("light orange", lightOrange),
    ("light purple", lightPurple),
    ("light red", lightRed),
    ("light yellow", lightYellow),
    ("orange", orange),
    ("pink", pink),
    ("purple", purple),
    ("red", red),
    ("while", white),
    ("yellow",yellow)]


    