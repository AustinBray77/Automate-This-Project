module ShapeCreatorConstants exposing (..)

import Dict exposing (Dict)
import GraphicSVG exposing (..)
import ShapeCreatorTypes as T exposing (..)

{- 
width: Float 
width = 1920
height: Float
height = 1080 
-}

emptyShape: Shape T.Msg
emptyShape = (rect 0 0 |> ghost)

--Number of decimals to round to
decimals: Int
decimals = 2

propertyFontSize: Float
propertyFontSize = 30

labelFontSize: Float
labelFontSize = 18

baseClickableBox : Shape T.Msg
baseClickableBox = 
  roundedRect 150 50 5
  |> filled white
  |> addOutline (solid 5) blue

wideClickableBox : Shape T.Msg
wideClickableBox =
  roundedRect (150 + propertyFieldXGap) 50 5
  |> filled white
  |> addOutline (solid 5) blue

propertyFieldOffsetRight: (Float, Float)
propertyFieldOffsetRight = (685, 0)

propertyFieldOffsetLeft: (Float, Float)
propertyFieldOffsetLeft = (-685 - propertyFieldXGap, 0)


propertyFieldYGap: Float
propertyFieldYGap = -110

propertyFieldXGap: Float
propertyFieldXGap = 175

defaultShapeInfo : ShapeInfo
defaultShapeInfo = ShapeInfo (0,0) 0 (1,1) "red" (solid) 5 "black" 0

selectedOutlineStyle : (Float -> LineType)
selectedOutlineStyle = dashed
selectedOutlineColour : String
selectedOutlineColour = "green"
groupSelectedOutlineColour: String
groupSelectedOutlineColour = "blue"
xOffset : Float   
xOffset = -870
maxUndoSteps : Int
maxUndoSteps = 50
snapAmount: Float
snapAmount = 20

baseRect : (ShapeType, ShapeInfo)
baseRect = (Rect 135 65  0, {defaultShapeInfo | position = (xOffset, 300)})
   
baseNgon : (ShapeType, ShapeInfo)
baseNgon = (Ngon 5 65, {defaultShapeInfo | position = (xOffset, 40)})

baseOval : (ShapeType, ShapeInfo)
baseOval = (Oval 135 55, {defaultShapeInfo | position = (xOffset, 180)})

baseText: (ShapeType, ShapeInfo)
baseText = (Text "Text" 70, {defaultShapeInfo | position = (xOffset - 60, 400), outlineSize = 1, fillColour = "black", outlineColour = "blue"})

backgroundHitbox : (ShapeType, ShapeInfo)
backgroundHitbox = (Rect 10000 5000 0, {defaultShapeInfo | position = (xOffset, 45), fillColour = "blank"})

minSelectedOutlineSize: Float
minSelectedOutlineSize = 2

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
    ("white", white),
    ("yellow",yellow)]

colStringToExportString: Dict String String
colStringToExportString = 
  Dict.fromList 
    [
    ("black", "black"),
    ("blank", "blank"),
    ("blue", "blue"),
    ("brown", "brown"),
    ("charcoal", "charcoal"),
    ("dark blue", "darkBlue"),
    ("dark brown", "darkBrown"),
    ("dark charcoal", "darkCharcoal"),
    ("dark gray", "darkGray"),
    ("dark green", "darkGreen"),
    ("dark grey", "darkGrey"),
    ("dark orange", "darkOrange"),
    ("dark purple", "darkPurple"),
    ("dark red", "darkRed"),
    ("dark yellow", "darkYellow"),
    ("gray", "gray"),
    ("green", "green"),
    ("grey", "grey"),
    ("hot pink", "hotPink"),
    ("light blue", "lightBlue"),
    ("light brown", "lightBrown"),
    ("light charcoal", "lightCharcoal"),
    ("light gray", "lightGray"),
    ("light green", "lightGreen"),
    ("light grey", "lightGrey"),
    ("light orange", "lightOrange"),
    ("light purple", "lightPurple"),
    ("light red", "lightRed"),
    ("light yellow", "lightYellow"),
    ("orange", "orange"),
    ("pink", "pink"),
    ("purple", "purple"),
    ("red", "red"),
    ("white", "white"),
    ("yellow","yellow")]
    