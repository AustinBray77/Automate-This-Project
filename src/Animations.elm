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

--Takes in a animation func input and swaps the start and end times (useful for reverse animations)
flipInputTime: AnimateFuncInput -> AnimateFuncInput
flipInputTime input = 
    AnimateFuncInput input.x input.y (TimeData input.time.end input.time.current input.time.start) input.shape

--Takes in a time data and returns the percentage through that the animation has been completed, between 0 and 1
percentCompleted: TimeData -> Float
percentCompleted time = 
    let
        timePercentage = ((time.current - time.start) / (time.end - time.start))
        percent = (min 1 (max 0 timePercentage)) -- how far through the animation we are
    in 
        percent

--Converts type alias RGBA to Color type 
rgbaToColor: RGBA -> Color 
rgbaToColor color =
    (rgba color.r color.g color.b color.a)

--Takes in a animation func input, start, and end color, and calculates what color the shape should currently be based on the input
calculateColor: AnimateFuncInput -> RGBA -> RGBA -> RGBA
calculateColor input startColor targetColor = 
    let
        timePercentage = percentCompleted input.time
    in
        { r = (startColor.r * (1 - timePercentage) + targetColor.r * timePercentage),  
        g =  (startColor.g * (1 - timePercentage) + targetColor.g * timePercentage),
        b =  (startColor.b * (1 - timePercentage) + targetColor.b * timePercentage),
        a =  (startColor.a * (1 - timePercentage) + targetColor.a * timePercentage)
        }

--Takes in a start and end color, as well as an animate func input and returns an animation of the shapes color between the two given colors
fadeShapeToColor: RGBA -> RGBA -> AnimateFuncInput -> Shape Msg
fadeShapeToColor startColor targetColor input = 
    if input.time.current > input.time.end then
        repaint (rgbaToColor targetColor) input.shape
    else
        let 
            newColor = (calculateColor input startColor targetColor)
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


moveBasedOnIndex: Int -> Float -> TimeData -> (Int, Shape Msg) -> (Int, Shape Msg)
moveBasedOnIndex square speed timeData shapeTuple =
    let
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
        timePercentage = percentCompleted timeData

        xPos = ((toFloat (modBy square index - square // 2)) + 0.5) * speed * (tan (pi/2 * timePercentage))
        yPos = (toFloat (index//square - square//2) + 0.5) * -speed * (tan (pi/2 * timePercentage))
    in
        (index, move (xPos, yPos) shape)

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
    let
        radius = input.x
        resolution = round(input.y)
        shapes = particlizeShape radius resolution input.shape
    in
        group (explodeParticlizedShape speed input.time shapes)

rotateBasedOnIndex: Int -> Float -> TimeData -> (Int, Shape Msg) -> (Int, Shape Msg)
rotateBasedOnIndex square speed timeData shapeTuple =
    let
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple
        timePercentage = percentCompleted timeData

        xPos = ((toFloat (modBy square index - square // 2)) + 0.5)
        yPos = (toFloat (index//square - square//2) + 0.5)

        dist = sqrt(xPos^2 + yPos^2)
    in
        (index, 
            rotate (dist * speed * degrees (tan (pi/2 * timePercentage)))
            (shape)
        )

explodeRotateShape: Float -> Float -> TimeData -> List (Shape Msg) -> List (Shape Msg)
explodeRotateShape speed rotateSpeed timeData shapes =
    let
        square = round(sqrt (toFloat (List.length shapes)))
    in
        List.indexedMap Tuple.pair shapes
        |> List.map (moveBasedOnIndex square speed timeData)
        |> List.map (rotateBasedOnIndex square rotateSpeed timeData)
        |> List.unzip
        |> Tuple.second

tornadoShape: Float -> Float -> AnimateFuncInput -> Shape Msg
tornadoShape speed rotateSpeed input = 
    let
        radius = input.x
        resolution = round(input.y)
        shapes = particlizeShape radius resolution input.shape
    in
        group (explodeRotateShape speed rotateSpeed input.time shapes)

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

slideOut : AnimateFuncInput -> Shape Msg
slideOut input = 
    let
        time =
            if input.time.current > input.time.end then input.time.end
            else (input.time.current - input.time.start)  
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

typeWriter: String -> Float -> Float -> TimeData -> String
typeWriter string speed blinkSpeed time = 
    if time.start > time.current then ""
    else if floor (time.current / speed) >= (String.length string) then
        string
    else
        String.append (String.slice 0 (floor (time.current / speed)) string) 
        (
            if modBy 2 (round (time.current / blinkSpeed)) == 0 && blinkSpeed /= 0 then 
                "_"
            else 
                " "
        )

animate : List (AnimateFuncInput -> Shape Msg) -- take in a list of functions that animate the shape given if we are at the right slide
        -> Float -> Float -> TimeData -> Shape Msg -> Shape Msg -- takes in all vars needed to do the animation
animate animations x y time shape =
        if (time.current < time.start && time.start < time.end) then 
            shape
        else
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
