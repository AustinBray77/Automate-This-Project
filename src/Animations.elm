module Animations exposing (..)
import ShapeCreator exposing (UserShape)
import ShapeCreator exposing (changeShapeColor)
import GraphicSVG exposing (Color)
import GraphicSVG exposing (rgba)
import Html.Attributes exposing (shape)
import GraphicSVG exposing (square)
import GraphicSVG exposing (Shape)
import GraphicSVG exposing (clip)
import ShapeCreator exposing (Msg)
import GraphicSVG exposing (filled)
import GraphicSVG exposing (red)
import GraphicSVG exposing (move)

{- Frame time in ms -}
frameTime: Float
frameTime = 1

type alias RGBA = {
    r: Float,
    g: Float,
    b: Float,
    a: Float
    }

type alias TimeData = {
    start: Float,
    current: Float,
    end: Float
    }

calculateColor: TimeData -> RGBA -> RGBA -> RGBA
calculateColor timeData startColor targetColor = 
    let
        timePercentage = (timeData.current - timeData.start) / (timeData.end - timeData.start)
    in
        { r = (startColor.r / (1 - timePercentage) + targetColor.r / timePercentage) / 2,  
        g =  (startColor.g / (1 - timePercentage) + targetColor.g / timePercentage) / 2,
        b =  (startColor.b / (1 - timePercentage) + targetColor.b / timePercentage) / 2,
        a =  (startColor.a / (1 - timePercentage) + targetColor.a / timePercentage) / 2
        }

rgbaToColor: RGBA -> Color 
rgbaToColor color =
    (rgba color.r color.g color.b color.a)

fadeShapeToColor: TimeData -> RGBA -> RGBA -> UserShape -> UserShape
fadeShapeToColor timeData startColor targetColor shape = 
    let 
        newColor = (calculateColor timeData startColor targetColor)
        timePercentage = (timeData.current - timeData.start) / (timeData.end - timeData.start)
    in
        if timePercentage > 1 then shape else changeShapeColor (rgbaToColor newColor) shape

clipShapes: Shape Msg -> (Int, Shape Msg) -> Shape Msg
clipShapes shape1 shapeTuple = 
    clip shape1 (Tuple.second shapeTuple)

placeShapesBasedOnIndex: Int -> (Int, Shape Msg) -> (Int, Shape Msg)
placeShapesBasedOnIndex resolution shapeTuple =
    let
        square = round (sqrt (toFloat resolution))
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
    in
        (index, 
            move (
                toFloat (-5 + modBy square (index+1) * 10), 
                toFloat (-5 + (index) // square * 10)
                ) 
            (shape)
        )

particlizeShape: Int -> Shape Msg -> List (Shape Msg)
particlizeShape resolution shape = 
    let
        baseSquare = 
            square 10
            |> filled red
    in
        List.repeat resolution (baseSquare)
            |> List.indexedMap Tuple.pair
            |> List.map (placeShapesBasedOnIndex resolution)
            |> List.map (clipShapes shape)


moveBasedOnIndex: Int -> TimeData -> (Int, Shape Msg) -> (Int, Shape Msg)
moveBasedOnIndex resolution timeData shapeTuple =
    let
        square = round (sqrt (toFloat resolution))
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
        timePercentage = ((timeData.current - timeData.start) / (timeData.end - timeData.start))
    in
        (index, 
            move (
                toFloat (-5 + modBy square (index+1) * 10 * (round (tan (pi/2 * timePercentage)))), 
                toFloat (-5 + (index) // square * 10 * (round (tan (pi/2 * timePercentage))))
                ) 
            (shape)
        )

explodeParticlizedShape: TimeData -> List (Shape Msg) -> List (Shape Msg)
explodeParticlizedShape timeData shapes =
    let
        resolution = round(sqrt (toFloat (List.length shapes)))
    in
        List.indexedMap Tuple.pair shapes
        |> List.map (moveBasedOnIndex resolution timeData)
        |> List.unzip
        |> Tuple.second
        