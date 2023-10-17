module Animations exposing (..)
import ShapeCreator exposing (UserShape)
import ShapeCreator exposing (changeShapeColor)
import GraphicSVG exposing (Color)
import GraphicSVG exposing (rgba)
import Html.Attributes exposing (shape)
import GraphicSVG exposing (square)
import GraphicSVG exposing (Shape)
import GraphicSVG exposing (clip)
import GraphicSVG exposing (filled)
import GraphicSVG exposing (move)
import GraphicSVG exposing (grey)
import GraphicSVG exposing (scaleX)
import GraphicSVG exposing (scaleY)
import GraphicSVG exposing (rotate)
import GraphicSVG.EllieApp exposing (GetKeyState)
import GraphicSVG exposing (group)

type Msg = Tick Float GetKeyState 

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

-- type input for antimation functions
type alias AnimateFuncInput = {
    x : Float, 
    y : Float, 
    time : TimeData, 
    shape : Shape Msg}

percentCompleted: TimeData -> Float
percentCompleted time = 
    let
        timePercentage = ((time.current - time.start) / (time.end - time.start))
        percent = (min 1 (max 0 timePercentage)) -- how far through the animation we are
    in 
        percent


calculateColor: AnimateFuncInput -> RGBA -> RGBA -> RGBA
calculateColor input startColor targetColor = 
    let
        timePercentage = percentCompleted input.time
    in
        { r = (startColor.r / (1 - timePercentage) + targetColor.r / timePercentage) / 2,  
        g =  (startColor.g / (1 - timePercentage) + targetColor.g / timePercentage) / 2,
        b =  (startColor.b / (1 - timePercentage) + targetColor.b / timePercentage) / 2,
        a =  (startColor.a / (1 - timePercentage) + targetColor.a / timePercentage) / 2
        }

rgbaToColor: RGBA -> Color 
rgbaToColor color =
    (rgba color.r color.g color.b color.a)

fadeShapeToColor: AnimateFuncInput -> RGBA -> RGBA -> UserShape -> UserShape
fadeShapeToColor input startColor targetColor shape = 
    if input.time.current > input.time.end then 
        shape
    else
        let 
            newColor = (calculateColor input startColor targetColor)
        in
            changeShapeColor (rgbaToColor newColor) shape

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
        timePercentage = percentCompleted timeData
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

particlizeAndExplodeShape: Float -> AnimateFuncInput -> Shape Msg
particlizeAndExplodeShape speed input = 
    if input.time.current < input.time.start then
        input.shape
    else
        let
            radius = input.x
            resolution = round(input.y)
            shapes = particlizeShape radius resolution input.shape
        in
            group (explodeParticlizedShape speed input.time shapes)

-- moves the shape x, y amount of pixels after the start time over the duration
moveAfterFor : AnimateFuncInput -> Shape Msg
moveAfterFor input = 
        let
            timePercentage = ((input.time.current - input.time.start) / (input.time.end - input.time.start))
            percent = (min 1 (max 0 timePercentage)) -- how far through the animation we are
            rtn = input.shape
                    |> move ((input.x * percent), (input.y * percent))
        in
            rtn 

-- scales the shape by the given x, y factor after the start time over the duration
scaleAfterFor : AnimateFuncInput -> Shape Msg
scaleAfterFor input = 
        let
            percent = percentCompleted input.time -- how far through the animation we are
            rtn = input.shape
                |> scaleX (1 + max 0 ((input.x - 1) * percent))
                |> scaleY (1 + max 0 ((input.y - 1) * percent))
        in
            rtn

-- takes in a "vector" that is used for direction and speed, the slide num that this animation should activate on, finally the model to access the starting times for slide animations
slideOut : AnimateFuncInput -> Shape Msg
slideOut input = 
    let
        time = (input.time.current - input.time.start)  
    in
        move ((input.x * time), (input.y*time)) input.shape

bounceBack : AnimateFuncInput -> Shape Msg
bounceBack input =
    let
        time = (input.time.current - input.time.start)  
    in
        move ((input.x * (time^time - 1)), (input.y * (time^time - 1))) input.shape

-- only first direction var is used
rotateAnimation : AnimateFuncInput -> Shape Msg
rotateAnimation input = 
    let
        time = (input.time.current - input.time.start)  
    in
        rotate (degrees (input.x * time)) input.shape

animate : List (AnimateFuncInput -> Shape Msg) -- take in a list of functions that animate the shape given if we are at the right slide
        -> Float -> Float -> TimeData -> Shape Msg -> Shape Msg -- takes in all vars needed to do the animation
animate animations x y time shape =
        subAnimate (AnimateFuncInput x y time shape) animations -- calling all the animations

-- used to loop thorugh each animation for the given shape
subAnimate : AnimateFuncInput -> List (AnimateFuncInput -> Shape Msg) -> Shape Msg
subAnimate input animationFuncs =
    let
        animationFunc = -- used to get the first animation
            case (List.head animationFuncs) of
                Just func -> func
                _ -> slideOut -- in the case that the head of the list is non existant use a default animation
        tempShape = animationFunc input -- calling the animation
        rtnShape = -- calling all other animations if there are any
            if List.length animationFuncs > 0 then -- only continue if there are more animations to play
                subAnimate (AnimateFuncInput input.x input.y input.time tempShape)
                    (case (List.tail animationFuncs) of -- required as List.tail returns maybe list
                        Just list -> list
                        _ -> [])
            else
                input.shape -- if there are no more animations return the shape
    in 
        rtnShape