module MakingSlideShowUtils exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import Html exposing (th)

-- storage for screen size
screen : { x : number, y : number}
screen = { x = 1920, y = 1080 }

-- type input for antimation functions
type alias AnimateFuncInput = {
    x : Float, 
    y : Float, 
    time : Float, 
    shape : Shape Msg}

type alias SlideInput = {
    time : Float,
    transitionTime : Float,
    state : SlideState}

view : Model -> Collage Msg
view model =
    collage screen.x screen.y
        [
        displaySlides model.slides model.time,
        text (Debug.toString model.slides)
        |> centered
        |> filled orange
        |> move (0, 50)
        |> scale 2, 
        displaySlideNum model
        ]

-- template for a slide background
slide : Color -> Shape a
slide color =
    group [
    rect screen.x screen.y
        |> filled color
    ] 

moveAfterTill : Float -> Float -> AnimateFuncInput -> Shape Msg
moveAfterTill startTime stopTime input = 
        if input.time > startTime then
            input.shape
            |> move ((input.x * (min stopTime (input.time - startTime))), (input.y * (min stopTime (input.time - startTime))))
        else 
            input.shape
            |> move (0, 0)

scaleAfterTill : Float -> Float -> AnimateFuncInput -> Shape Msg
scaleAfterTill startTime stopTime input = 
        input.shape
        |> scaleX (input.x * (if input.time > startTime then min stopTime (input.time - startTime) else 1/input.x))
        |> scaleY (input.y * (if input.time > startTime then min stopTime (input.time - startTime) else 1/input.y))

-- takes in a "vector" that is used for direction and speed, the slide num that this animation should activate on, finally the model to access the starting times for slide animations
slideOut : AnimateFuncInput -> Shape Msg
slideOut input = 
        move ((input.x * input.time), (input.y*input.time)) input.shape

bounceBack : AnimateFuncInput -> Shape Msg
bounceBack input =
    move ((input.x * (input.time^input.time - 1)), (input.y * (input.time^input.time - 1))) input.shape

testing : AnimateFuncInput -> Shape Msg
testing input = 
    move ((input.x * (sin input.time)), (input.y * (sin input.time))) input.shape

-- only first direction var is used
rotateAnimation : AnimateFuncInput -> Shape Msg
rotateAnimation input = 
    rotate (degrees (input.x * input.time)) input.shape

-- the same as animate but only gets called when the slide is tranitioning 
transition : List (AnimateFuncInput -> Shape Msg) -> Float -> Float -> Float -> SlideState -> Shape Msg -> Shape Msg
transition animations x y time state shape =
    case state of 
        Transitioning -> animate animations x y time shape
        _ -> shape

animate : List (AnimateFuncInput -> Shape Msg) -- take in a list of functions that animate the shape given if we are at the right slide
        -> Float -> Float -> Float -> Shape Msg -> Shape Msg -- takes in all vars needed to do the animation
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

displaySlideNum : Model -> Shape Msg
displaySlideNum model =
    group 
    [
        roundedRect 100 100 5
        |> filled white
        ,
        text (String.fromInt (model.slideNumber + 1))
        |> size 50
        |> centered
        |> filled black
        |> move (0,-15)
    ]
        |> move (-screen.x/2 + 50, screen.y/2 - 50)
        -- makes the current slide number transparent over one second
        -- after having been shown for a second
        |> makeTransparent (
        if model.time - model.slideTextStartTime >= 1 then
            2 - (model.time - model.slideTextStartTime)
        else 
            1
        )

displaySlides : List Slide -> Float -> Shape Msg
displaySlides slides time = 
    case List.reverse slides of -- reversing the slides list to draw the first slides on top of the last slides when transitioning 
        x::xs -> group (List.append [subDisplaySlides x time] [displaySlides xs time])
        _ -> filled black (rect 0 0) -- returning a shape that wont be drawn

subDisplaySlides : Slide -> Float -> Shape Msg
subDisplaySlides s time = 
    case s.state of 
        Hidden -> filled black (rect 0 0) -- returning a shape that wont be drawn
        _ -> s.displaySlide (SlideInput (time - s.startTime) (time - s.transitionTime) s.state)

-- if the given key is just down return True
keyJust: (Keys -> KeyState) -> Keys -> Bool
keyJust keyInfo key =
  keyInfo key == JustDown
  
-- if any of the given keys are just down return True
anyKeyJust: List Keys -> (Keys -> KeyState) -> Bool
anyKeyJust keys keyInfo =
  (List.filter (keyJust keyInfo) keys
    |> List.length) >= 1

update : Msg -> Model -> Model
update msg model =
    case msg of
        Tick t ( keys, _, _ ) ->
            if (anyKeyJust [RightArrow, UpArrow, Space] keys) then -- if any of the next slide keys are pressed
            { 
                model | slideNumber = model.slideNumber + 1,
                time = t,
                slides = updateSlides model.slides (model.slideNumber + 1) t, -- model values have not been updated yet so still have to add one
                -- restarting the start time for the slide number text
                slideTextStartTime = t
            }
            else if (anyKeyJust [LeftArrow, DownArrow] keys) then -- if any of the back keys are pressed go back a slide
            {
                model | slideNumber = max (model.slideNumber - 1) 0,
                time = t,
                slides = updateSlides model.slides (max (model.slideNumber - 1) 0) t -- model values have not been updated yet so still have to add one
                ,
                -- restarting the start time for the slide number text
                slideTextStartTime = t
            }
            else -- if nothing happend update time and carry over the rest of the data
            { 
                model | slideNumber = model.slideNumber,
                time = t,
                slides = updateTransitioningSlides model.slides model.slideNumber t,
                slideTextStartTime = model.slideTextStartTime
            }

updateTransitioningSlides : List Slide -> Int -> Float -> List Slide
updateTransitioningSlides slides slideNum time =
    case slides of
        x::xs -> List.append 
            [if x.state == Transitioning && (time - x.transitionTime) >= 3 then
                (Slide Hidden x.displaySlide x.startTime x.transitionTime)
            else 
                (Slide x.state x.displaySlide x.startTime x.transitionTime)] 
            (if slideNum <= 1 then
                xs -- stop iterating through once we reach the current slide
            else
                (updateTransitioningSlides xs (slideNum - 1) time))
        _ -> []

updateSlides : List Slide -> Int -> Float -> List Slide
updateSlides slides slideNum time = 
    case slides of
        x::xs -> List.append 
            [if x.state == Transitioning && (time - x.transitionTime) >= 3 then
                (Slide Hidden x.displaySlide x.startTime x.transitionTime)
            else if slideNum == 1 && x.state == Visible then -- if this slide was being shown before slide change
                (Slide Transitioning x.displaySlide x.startTime time)
            else if slideNum == 0 then -- updates the current slides state
                (Slide Visible x.displaySlide time time)
            else if slideNum == -1 then -- if we went back a slide need to hide previous page
                (Slide Hidden x.displaySlide time time)
            else 
                (Slide x.state x.displaySlide x.startTime x.transitionTime)] 
            (if slideNum <= -1 then
                xs -- stop iterating through once we have check the next slide and the previous slide
            else
                (updateSlides xs (slideNum - 1) time))
        _ -> []

type Msg = Tick Float GetKeyState   

-- can transition for a max for 3 seconds
type SlideState = Visible | Transitioning | Hidden

-- content is used for the content of the slide
-- slide is used for moving the slide out of view
type AnimationType = SlideAnimation | ContentAnimation

type alias Slide =
    {state : SlideState, -- the state of this slide
     displaySlide : (SlideInput -> Shape Msg), -- function that creates the slide
     startTime : Float, -- the time this slide started being seen (used for slide animtation)
     transitionTime : Float -- the time that the transition started
    } 

type alias Model = {time : Float, 
                    slideNumber : Int, 
                    slides : List Slide, 
                    slideTextStartTime : Float}

firstSlide : SlideInput -> Shape Msg
firstSlide input = 
    group 
    [
        slide black,
        text "How to use slide animations"
        |> centered
        |> filled white
        |> scale 10,
        rect 100 100
        |> filled blue 
        |> animate [rotateAnimation] 100 0 input.time 
    ]
    |> transition [slideOut] 2000 1000 input.transitionTime input.state

secondSlide : SlideInput -> Shape Msg
secondSlide input =
    group 
    [
        slide black,
        text "This is the second slide"
        |> centered
        |> filled white
        |> scale 10,
        rect 100 100
        |> filled red
        |> animate [rotateAnimation, moveAfterTill 2 3] 100 200 input.time
    ]
    |> transition [bounceBack] 2000 500 input.transitionTime input.state

thirdSlide : SlideInput -> Shape Msg
thirdSlide input =
    group
    [
        slide black, 
        text "To create a slide its as easy as\nmaking a new function"
        |> centered
        |> filled white
        |> scale 10,
        rect 200 50
        |> filled red
    ]
    |> transition [rotateAnimation, bounceBack] 500 2000 input.transitionTime input.state

init : Model
init = { time = 0, 
        slideNumber = 0, 
        slides = [Slide Visible firstSlide 0 0, Slide Hidden secondSlide 0 0, Slide Hidden thirdSlide 0 0], 
        slideTextStartTime = 0 }

main : GraphicSVG.EllieApp.GameApp Model Msg
main =
    gameApp
        Tick
        { 
            model = init
        ,   view = view
        ,   update = update
        ,   title = "SlideShow" -- This is the title of the browser window / tab
        }
