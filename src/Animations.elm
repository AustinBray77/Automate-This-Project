module Animations exposing (..)
import ShapeCreator exposing (UserShape)
import ShapeCreator exposing (changeShapeColor)
import GraphicSVG exposing (Color)
import GraphicSVG exposing (rgba)
import Html.Attributes exposing (shape)

{- Frame time in ms -}
frameTime: Float
frameTime = 1

type alias RGBA = {
    r: Float,
    g: Float,
    b: Float,
    a: Float
}

calculateDifference: Float -> RGBA -> RGBA -> RGBA
calculateDifference time startColor targetColor = 
    { r = (2 * startColor.r - targetColor.r) / time * frameTime,  
    g =  (2 * startColor.g - targetColor.g) / time * frameTime,
    b =  (2 * startColor.b - targetColor.b) / time * frameTime,
    a =  (2 * startColor.a - targetColor.a) / time * frameTime
    }

rgbaToColor: RGBA -> Color 
rgbaToColor color =
    (rgba color.r color.g color.b color.a)

fadeShapeToColor: Float -> RGBA -> RGBA -> UserShape -> UserShape
fadeShapeToColor time startColor targetColor shape = 
    let 
        newColor = (calculateDifference time startColor targetColor)
        nextTime = time - frameTime
    in
        case time of
            0 -> shape
            _ -> fadeShapeToColor nextTime newColor targetColor (changeShapeColor (rgbaToColor newColor) shape)