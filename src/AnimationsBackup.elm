module AnimationsBackup exposing (..)
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
import GraphicSVG exposing (move)
import GraphicSVG exposing (grey)

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
clipShapes shape shapeTuple = 
    clip (Tuple.second shapeTuple) shape

placeShapesBasedOnIndex: Float -> Int -> Float -> (Int, Shape Msg) -> (Int, Shape Msg)
placeShapesBasedOnIndex radius resolution squareSize shapeTuple =
    let
        square = round (sqrt (toFloat resolution))
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
    in
        (index, 
            move (
                (squareSize/2) - radius + toFloat(modBy square index) * squareSize, 
                radius - (squareSize/2) + toFloat(index // square) * -squareSize
                ) 
            (shape)
        )

particlizeShape: Float -> Int -> Shape Msg -> List (Shape Msg)
particlizeShape radius resolution shape = 
    let
        squareSize = radius*2 / (sqrt (toFloat resolution))
        baseSquare = 
            square squareSize
            |> filled grey
    in
        List.repeat resolution (baseSquare)
            |> List.indexedMap Tuple.pair
            |> List.map (placeShapesBasedOnIndex radius resolution squareSize)
            |> List.map (clipShapes shape)


moveBasedOnIndex: Int -> Float -> TimeData -> (Int, Shape Msg) -> (Int, Shape Msg)
moveBasedOnIndex square speed timeData shapeTuple =
    let
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
        timePercentage = ((timeData.current - timeData.start) / (timeData.end - timeData.start))
    in
        (index, 
            move (
                ((toFloat (modBy square index - square // 2)) + 0.5) * speed * (tan (pi/2 * timePercentage)), 
                (toFloat (index//square - square//2) + 0.5) * -speed * (tan (pi/2 * timePercentage))
                ) 
            (shape)
        )

explodeParticlizedShape: Float -> TimeData -> List (Shape Msg) -> List (Shape Msg)
explodeParticlizedShape speed timeData shapes =
    let
        square = round(sqrt (toFloat (List.length shapes)))
    in
        List.indexedMap Tuple.pair shapes
        |> List.map (moveBasedOnIndex square speed timeData)
        |> List.unzip
        |> Tuple.second