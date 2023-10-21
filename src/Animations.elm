module Animations exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

type Msg = Tick Float GetKeyState 

type alias RGBA = {
    r: Float,
    g: Float,
    b: Float,
    a: Float
    }

-- holds the time data for animations that stop and start at a specific time
type alias TimeData = {
    start: Float,
    end: Float
    }

-- type input for antimation functions
type alias AnimateFuncInput = { 
    time : Float, 
    shape : Shape Msg}

--Takes in a animation func input and swaps the start and end times (useful for reverse animations)
-- flipInputTime: AnimateFuncInput -> AnimateFuncInput
-- flipInputTime input = 
--     AnimateFuncInput input.x input.y (TimeData input.time.end input.time.current input.time.start) input.shape

--Takes in a time data and returns the percentage through that the animation has been completed, between 0 and 1
percentCompleted: TimeData -> Float -> Float
percentCompleted time start = 
    let
        timePercentage = ((start - time.start) / (time.end - time.start))
        percent = (min 1 (max 0 timePercentage)) -- how far through the animation we are
    in 
        percent

-- fromTill: TimeData -> (AnimateFuncInput -> Shape Msg) -> AnimateFuncInput -> Shape Msg
-- fromTill timeData animation input =
--     input.shape
--         |> animation (AnimateFuncInput input.)

--Converts type alias RGBA to Color type 
rgbaToColor: RGBA -> Color 
rgbaToColor color =
    (rgba color.r color.g color.b color.a)

--Takes in a animation func input, start, and end color, and calculates what color the shape should currently be based on the input
calculateColor: TimeData -> AnimateFuncInput -> RGBA -> RGBA -> RGBA
calculateColor timeData input startColor targetColor = 
    let
        timePercentage = percentCompleted timeData input.time
    in
        { r = (startColor.r * (1 - timePercentage) + targetColor.r * timePercentage),  
        g =  (startColor.g * (1 - timePercentage) + targetColor.g * timePercentage),
        b =  (startColor.b * (1 - timePercentage) + targetColor.b * timePercentage),
        a =  (startColor.a * (1 - timePercentage) + targetColor.a * timePercentage)
        }

--Takes in a start and end color, as well as an animate func input and returns an animation of the shapes color between the two given colors
fadeShapeToColor: RGBA -> RGBA -> TimeData -> AnimateFuncInput -> Shape Msg
fadeShapeToColor startColor targetColor timeData input = 
    if input.time > timeData.end then
        repaint (rgbaToColor targetColor) input.shape
    else
        let 
            newColor = (calculateColor timeData input startColor targetColor)
        in
            repaint (rgbaToColor newColor) input.shape

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


moveBasedOnIndex: Int -> Float -> TimeData -> Float -> (Int, Shape Msg) -> (Int, Shape Msg)
moveBasedOnIndex square speed timeData currentTime shapeTuple =
    let
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
        timePercentage = percentCompleted timeData currentTime

        xPos = ((toFloat (modBy square index - square // 2)) + 0.5) * speed * (tan (pi/2 * timePercentage))
        yPos = (toFloat (index//square - square//2) + 0.5) * -speed * (tan (pi/2 * timePercentage))
    in
        (index, move (xPos, yPos) shape)

explodeParticlizedShape: Float -> TimeData -> Float -> List (Shape Msg) -> List (Shape Msg)
explodeParticlizedShape speed timeData currentTime shapes =
    let
        square = round(sqrt (toFloat (List.length shapes)))
    in
        List.indexedMap Tuple.pair shapes
        |> List.map (moveBasedOnIndex square speed timeData currentTime)
        |> List.unzip
        |> Tuple.second

particlizeAndExplodeShape: Float -> Float -> Float -> TimeData -> AnimateFuncInput -> Shape Msg
particlizeAndExplodeShape speed x y timeData input = 
    let
        radius = x
        resolution = round(y)
        shapes = particlizeShape radius resolution input.shape
    in
        group (explodeParticlizedShape speed timeData input.time shapes)

rotateBasedOnIndex: Int -> Float -> TimeData -> Float -> (Int, Shape Msg) -> (Int, Shape Msg)
rotateBasedOnIndex square speed timeData currentTime shapeTuple =
    let
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
        timePercentage = percentCompleted timeData currentTime

        xPos = ((toFloat (modBy square index - square // 2)) + 0.5)
        yPos = (toFloat (index//square - square//2) + 0.5)

        dist = sqrt(xPos^2 + yPos^2)
    in
        (index, 
            rotate (dist * speed * degrees (tan (pi/2 * timePercentage)))
            (shape)
        )

explodeRotateShape: Float -> Float -> TimeData -> Float -> List (Shape Msg) -> List (Shape Msg)
explodeRotateShape speed rotateSpeed timeData currentTime shapes =
    let
        square = round(sqrt (toFloat (List.length shapes)))
    in
        List.indexedMap Tuple.pair shapes
        |> List.map (moveBasedOnIndex square speed timeData currentTime)
        |> List.map (rotateBasedOnIndex square rotateSpeed timeData currentTime)
        |> List.unzip
        |> Tuple.second

tornadoShape: Float -> Float -> Float -> Int -> TimeData -> AnimateFuncInput -> Shape Msg
tornadoShape speed rotateSpeed radius resolution timeData input = 
    let
        shapes = particlizeShape radius resolution input.shape
    in
        group (explodeRotateShape speed rotateSpeed timeData input.time shapes)

-- moves the shape x, y amount of pixels after the start time over the duration
moveAfterFor : Float -> Float -> TimeData -> AnimateFuncInput -> Shape Msg
moveAfterFor x y timeData input = 
        let
            percent = percentCompleted timeData input.time -- how far through the animation we are
        in
            input.shape
                |> move ((x * percent), (y * percent))

-- scales the shape by the given x, y factor after the start time over the duration
scaleAfterFor : (Float, Float) -> TimeData -> AnimateFuncInput -> Shape Msg
scaleAfterFor xy timeData input = 
        let
            percent = percentCompleted timeData input.time -- how far through the animation we are
            rtn = input.shape
                |> scaleX (1 + max 0 ((Tuple.first xy - 1) * percent))
                |> scaleY (1 + max 0 ((Tuple.second xy - 1) * percent))
        in
            rtn

slideOut : Float -> Float -> AnimateFuncInput -> Shape Msg
slideOut x y input = 
        move ((x * input.time), (y * input.time)) input.shape

bounceBack : Float -> Float -> AnimateFuncInput -> Shape Msg
bounceBack x y input =
    let
        time = input.time
    in
        move ((x * (time^time - 1)), (y * (time^time - 1))) input.shape

-- only first direction var is used
rotateAnimation : Float -> AnimateFuncInput -> Shape Msg
rotateAnimation rotation input = 
        rotate (degrees (rotation * input.time)) input.shape

-- backend function
typeWriter: String -> Float -> Float -> TimeData -> Float -> String
typeWriter string speed blinkSpeed time currentTime = 
    if time.start > currentTime then ""
    else if floor (currentTime / speed) >= (String.length string) then
        string
    else
        String.append (String.slice 0 (floor (currentTime / speed)) string) 
        (
            if modBy 2 (round (currentTime / blinkSpeed)) == 0 && blinkSpeed /= 0 then 
                "_"
            else 
                " "
        )

animate : List (AnimateFuncInput -> Shape Msg) -- take in a list of functions that animate the shape given if we are at the right slide
            -> Float -> Shape Msg -> Shape Msg -- takes in all vars needed to do the animation
animate animations time shape =
    subAnimate (AnimateFuncInput time shape) animations -- calling all the animations

-- used to loop thorugh each animation for the given shape
subAnimate : AnimateFuncInput -> List (AnimateFuncInput -> Shape Msg) -> Shape Msg
subAnimate input animationFuncs =
    case animationFuncs of
        x :: xs -> subAnimate (AnimateFuncInput input.time (x input)) xs -- calling the animation on the shape until list is empty
        _ -> input.shape
