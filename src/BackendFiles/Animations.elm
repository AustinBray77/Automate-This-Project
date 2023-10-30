module BackendFiles.Animations exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)

--Takes in a time data and returns the percentage through that the animation has been completed, between 0 and 1
percentCompleted: TimeData -> Float -> Float
percentCompleted time currentTime = 
    let
        timePercentage = 
            case time.repeating of
                RepeatFromStart -> repeatFromStart time currentTime
                RepeatFromStartWithPause -> repeatFromStartWithPause time currentTime
                RepeatFromEndWithPause -> repeatFromEndWithPause time currentTime
                RepeatLoop -> repeatLoop time currentTime
                Once -> ((currentTime - time.start) / (time.end - time.start))
        percent = (min 1 (max 0 timePercentage)) -- how far through the animation we are
    in 
        percent

fmod: Float -> Float -> Float
fmod divisor dividend = 
  if divisor > dividend then
    dividend
  else
    fmod divisor (dividend - divisor)

--RepeatFromStart
repeatLoop: TimeData -> Float -> Float
repeatLoop timeData curTime = 
    let 
        difference = timeData.end - timeData.start
        percentTime = (fmod (difference * 2) (curTime - timeData.start)) /  difference
    in
    if curTime < timeData.start then
        0
    else if percentTime <= 1 then
        percentTime
    else 
        2 - percentTime

repeatFromStartWithPause: TimeData -> Float -> Float
repeatFromStartWithPause timeData curTime = 
    let 
        modTime = (fmod (timeData.end) (curTime))
    in
    if modTime < timeData.start then
        0
    else    
        (modTime - timeData.start) / (timeData.end - timeData.start)

repeatFromEndWithPause: TimeData -> Float -> Float
repeatFromEndWithPause timeData curTime = 
    let 
        modTime = (fmod (timeData.end) (curTime))
    in
    if modTime < timeData.start then
        1
    else    
        1 - (modTime - timeData.start) / (timeData.end - timeData.start)

repeatFromStart: TimeData -> Float -> Float
repeatFromStart timeData curTime = 
    let 
        difference = timeData.end - timeData.start
        percentTime = (fmod difference (curTime - timeData.start)) /  difference
    in
    if curTime < timeData.start then
        0
    else
        percentTime

-- EASING FUNCTIONS
--Tan function scaled down to have it's period between 0 and 1
tanScaled: Float -> Float 
tanScaled x =
    tan (pi/2 * x)

-- Sin function scaled to have it's period between 0 and 1
-- ease in and out
easeInAndOut: Float -> Float
easeInAndOut x =
    clamp 0 1 (sin (pi * (x - 0.5)) / 2 + 0.5)

--Sin function scaled to have only the top left quarter of the period between 0 and 1
easeOut: Float -> Float
easeOut x =
    clamp 0 1 (sin (pi * x / 2))

--Sin function scaled to have only the bottom left quarter of the period between 0 and 1
easeIn: Float -> Float
easeIn x =
    sin(pi / 2 * (x - 1)) + 1

-- makes the animation run in the given TimeData interval
-- this function assumes that the given animation is originally done in 1 second
fromTill: TimeData -> Maybe Ease -> (AnimateFuncInput -> Shape Msg) -> AnimateFuncInput -> Shape Msg
fromTill timeData easeFunc animation input =
    let
        ease = 
            case easeFunc of 
                Nothing -> identity
                Just func -> func
    in
        animation (AnimateFuncInput (ease ((percentCompleted timeData) input.time)) input.shape)

-- Converts type alias RGBA to Color type 
rgbaToColor: RGBA -> Color 
rgbaToColor color =
    (rgba color.r color.g color.b color.a)

--Takes in a animation func input, start, and end color, and calculates what color the shape should currently be based on the input
calculateColor: AnimateFuncInput -> RGBA -> RGBA -> RGBA
calculateColor input startColor targetColor = 
        { r = (startColor.r * (1 - input.time) + targetColor.r * input.time),  
        g =  (startColor.g * (1 - input.time) + targetColor.g * input.time),
        b =  (startColor.b * (1 - input.time) + targetColor.b * input.time),
        a =  (startColor.a * (1 - input.time) + targetColor.a * input.time)
        }

-- Takes in a start and end color, as well as an animate func input and returns an animation of the shapes color between the two given colors
-- takes 1 second to turn from start to end color (use fromTill function to make this duration longer or shorter)
fadeShapeToColor: RGBA -> RGBA -> AnimateFuncInput -> Shape Msg
fadeShapeToColor startColor targetColor input = 
    if input.time > 1 then
        repaint (rgbaToColor targetColor) input.shape
    else
        let 
            newColor = (calculateColor input startColor targetColor)
        in
            repaint (rgbaToColor newColor) input.shape

--Takes in a start and end color as well as an animate func input and resturns an animation of the shapes outline between the two given colors
-- takes 1 second to turn from start to end color (use fromTill function to make this duration longer or shorter)
fadeOutlineToColor: RGBA -> RGBA -> Float -> AnimateFuncInput -> Shape Msg
fadeOutlineToColor startColor targetColor outlineThickness input = 
    if input.time > 1 then
        addOutline (solid outlineThickness) (rgbaToColor targetColor) input.shape
    else
        let 
            newColor = (calculateColor input startColor targetColor)
        in
            addOutline (solid outlineThickness) (rgbaToColor newColor) input.shape

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

particlizeShape: Float -> Int -> (Float, Float) -> Shape Msg -> List (Shape Msg)
particlizeShape radius resolution position shape = 
    let
        squareSize = radius*2 / (sqrt (toFloat resolution))
        baseSquare = 
            square squareSize
            |> filled grey
    in
        List.repeat resolution (baseSquare)
            |> List.map (\x -> x |> move position)
            |> List.indexedMap Tuple.pair
            |> List.map (placeShapesBasedOnIndex radius resolution squareSize)
            |> List.map (clipShapes shape)


moveBasedOnIndex: Int -> Float -> Float -> (Int, Shape Msg) -> (Int, Shape Msg)
moveBasedOnIndex square speed currentTime shapeTuple =
    let
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple

        xPos = ((toFloat (modBy square index - square // 2)) + 0.5) * speed * currentTime
        yPos = (toFloat (index//square - square//2) + 0.5) * -speed * currentTime
    in
        (index, move (xPos, yPos) shape)

explodeParticlizedShape: Float -> Float -> List (Shape Msg) -> List (Shape Msg)
explodeParticlizedShape speed currentTime shapes =
    let
        square = round(sqrt (toFloat (List.length shapes)))
    in
        List.indexedMap Tuple.pair shapes
        |> List.map (moveBasedOnIndex square speed currentTime)
        |> List.unzip
        |> Tuple.second

particlizeAndExplodeShape: Float -> Float -> Int -> (Float, Float) -> AnimateFuncInput -> Shape Msg
particlizeAndExplodeShape speed radius resolution position input= 
    let
        shapes = particlizeShape radius resolution position input.shape
    in
        group (explodeParticlizedShape speed input.time shapes)

rotateBasedOnIndex: Int -> Float -> Float -> (Int, Shape Msg) -> (Int, Shape Msg)
rotateBasedOnIndex square speed currentTime shapeTuple =
    let
        index = Tuple.first shapeTuple
        shape = Tuple.second shapeTuple

        xPos = ((toFloat (modBy square index - square // 2)) + 0.5)
        yPos = (toFloat (index//square - square//2) + 0.5)

        dist = sqrt(xPos^2 + yPos^2)
    in
        (index, 
            rotate (dist * speed * degrees currentTime)
            (shape)
        )

explodeRotateShape: Float -> Float -> Float -> List (Shape Msg) -> List (Shape Msg)
explodeRotateShape speed rotateSpeed currentTime shapes =
    let
        square = round(sqrt (toFloat (List.length shapes)))
    in
        List.indexedMap Tuple.pair shapes
        |> List.map (moveBasedOnIndex square speed currentTime)
        |> List.map (rotateBasedOnIndex square rotateSpeed currentTime)
        |> List.unzip
        |> Tuple.second

tornadoShape: Float -> Float -> Float -> Int -> (Float, Float) -> AnimateFuncInput -> Shape Msg
tornadoShape speed rotateSpeed radius resolution position input = 
    let
        shapes = particlizeShape radius resolution position input.shape
    in
        group (explodeRotateShape speed rotateSpeed input.time shapes)

-- moves the shape x, y amount of pixels after the start time over the duration
moveAni : Float -> Float -> AnimateFuncInput -> Shape Msg
moveAni x y input = 
        input.shape
            |> move ((x * input.time), (y * input.time))

-- scales the shape by the given x, y factor after the start time over the duration
scaleAni : (Float, Float)-> AnimateFuncInput -> Shape Msg
scaleAni xy input = 
    input.shape
        |> scaleX (1 + ((Tuple.first xy - 1) * input.time))
        |> scaleY (1 + ((Tuple.second xy - 1) * input.time))

-- scales the shape by the given x, y factor once time is greator than 0
scaleInstant : (Float, Float)-> AnimateFuncInput -> Shape Msg
scaleInstant xy input = 
    if input.time > 0 then
        input.shape
            |> scaleX (Tuple.first xy)
            |> scaleY (Tuple.second xy)
    else input.shape

slideOut : Float -> Float -> AnimateFuncInput -> Shape Msg
slideOut x y input = 
        move ((x * input.time), (y * input.time)) input.shape

-- moves the shape backword before moving speeding up in the other direction
bounceBack : Float -> Float -> AnimateFuncInput -> Shape Msg
bounceBack x y input =
    let
        time = input.time
    in
        move ((x * (time^time - 1)), (y * (time^time - 1))) input.shape

-- rotates the shape
rotateAni : Float -> AnimateFuncInput -> Shape Msg
rotateAni rotation input = 
        rotate (degrees (rotation * input.time)) input.shape

-- multiplies a tuple of floats by a given float k
multTuple: Float -> (Float, Float) -> (Float, Float)
multTuple k (x, y) =
  (k*x, k*y)

-- rotates around a shape 
rotateAround : Float -> (Float, Float) -> AnimateFuncInput -> Shape Msg
rotateAround speed position input =
    input.shape
    |> move (multTuple -1 position)
    |> rotate (speed * input.time)
    |> move position

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

--Blank shape used for hide animation optimization
blankShape: Shape Msg
blankShape = 
    rect 0 0 
    |> filled blank

-- Hides shape after 1 second
hideShape: RGBA -> AnimateFuncInput -> Shape Msg
hideShape shapeColor input =
    if input.time < 1 then
        input.shape
        |> repaint (rgbaToColor (calculateColor input shapeColor (RGBA 0 0 0 0) ))
    else 
        blankShape

showShape: RGBA -> AnimateFuncInput -> Shape Msg
showShape shapeColor input = 
    if input.time == 0 then
        blankShape
    else if input.time == 1 then
        input.shape
    else 
        input.shape
        |> repaint (rgbaToColor (calculateColor input (RGBA 0 0 0 0) shapeColor))
-- makes the syntax better when using with shapes (allows you to use it with "|>" like the "move" and "rotate" functions)
animate : List (AnimateFuncInput -> Shape Msg) -- take in a list of functions that animate the shape given if we are at the right slide
            -> Float -> Shape Msg -> Shape Msg -- takes in the current time and shape
animate animations time shape =
    subAnimate (AnimateFuncInput time shape) animations -- calling all the animations

-- backend function
-- used to loop thorugh each animation for the given shape
subAnimate : AnimateFuncInput -> List (AnimateFuncInput -> Shape Msg) -> Shape Msg
subAnimate input animationFuncs =
    case animationFuncs of
        x :: xs -> subAnimate (AnimateFuncInput input.time (x input)) xs -- calling the animation on the shape until list is empty
        _ -> input.shape -- returning shape with animations applied once list is empty

-- the same as animate but only gets called when the slide is tranitioning (takes in extra param to check if the animation should play)
transition : List (AnimateFuncInput -> Shape Msg) -> Float -> SlideState -> Shape Msg -> Shape Msg
transition animations time state shape =
    case state of 
        Transitioning -> animate animations time shape
        _ -> shape