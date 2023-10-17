module MakingSlideShowUtils exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

-- storage for screen size
screen : { x : number, y : number}
screen = { x = 1920, y = 1080 }

view : Model -> Collage Msg
view model =
    collage screen.x screen.y
        [
        displaySlides model.slides model.time, -- displays the slides
        displaySlideNum model -- displays the slide number
        ]

-- template for a slide background
slide : Color -> Shape a
slide color =
    group [
    rect screen.x screen.y
        |> filled color
    ] 

-- moves the shape x, y amount of pixels after the start time over the duration
moveAfterFor : Float -> Float -> AnimateFuncInput -> Shape Msg
moveAfterFor startTime duration input = 
        let
            percent = (min 1 (max 0 (input.time - startTime)/duration)) -- how far through the animation we are
            rtn = input.shape
                    |> move ((input.x * percent), (input.y * percent))
        in
            rtn 

-- scales the shape by the given x, y factor after the start time over the duration
scaleAfterFor : Float -> Float -> AnimateFuncInput -> Shape Msg
scaleAfterFor startTime duration input = 
        let
            percent = (min 1 (max 0 (input.time - startTime)/duration)) -- how far through the animation we are
            rtn = input.shape
                |> scaleX (1 + max 0 ((input.x - 1) * percent))
                |> scaleY (1 + max 0 ((input.y - 1) * percent))
        in
            rtn

-- takes in a "vector" that is used for direction and speed, the slide num that this animation should activate on, finally the model to access the starting times for slide animations
slideOut : AnimateFuncInput -> Shape Msg
slideOut input = 
        move ((input.x * input.time), (input.y*input.time)) input.shape

bounceBack : AnimateFuncInput -> Shape Msg
bounceBack input =
    move ((input.x * (input.time^input.time - 1)), (input.y * (input.time^input.time - 1))) input.shape

-- only first direction var is used
rotateAnimation : AnimateFuncInput -> Shape Msg
rotateAnimation input = 
    rotate (degrees (input.x * input.time)) input.shape

-- the same as animate but only gets called when the slide is tranitioning (takes in extra param to check if the animation should play)
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
    case slides of
        x::xs -> group (List.append [displaySlides xs time] [displaySlide x time])
        _ -> filled black (rect 0 0) -- returning a shape that wont be drawn

-- makes it easier to read the displaySlides function
displaySlide : Slide -> Float -> Shape Msg
displaySlide s time = 
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

-- used to set transitioning slides to hidden adter there 3 seconds is up
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

-- used to update the states of the slides when the slide number is changed
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

-- can transition for a max of 3 seconds
type SlideState = Visible | Transitioning | Hidden

type alias SlideInput = {
    time : Float,
    transitionTime : Float,
    state : SlideState}

-- type input for antimation functions
type alias AnimateFuncInput = {
    x : Float, 
    y : Float, 
    time : Float, 
    shape : Shape Msg}

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

intro : SlideInput -> Shape Msg
intro input = 
    group 
    [
        slide black,
        text "Intro"
        |> centered
        |> filled white
        |> scale 10,
        rect 100 100
        |> filled blue 
        |> animate [(scaleAfterFor 1 2)] 2 1 input.time
        |> animate [rotateAnimation] 100 0 input.time 
        |> move (0, -100)
    ]
    |> transition [slideOut] 2000 1000 input.transitionTime input.state

creating1 : SlideInput -> Shape Msg
creating1 input =
    group
    [
        slide black, 
        rect 30 30
        |> filled red
        |> animate [rotateAnimation] 100 0 input.time
        |> animate [moveAfterFor 1 2] 1900 0 input.time
        |> move (-950, 200),
        rect 30 30
        |> filled red
        |> animate [rotateAnimation] 100 0 input.time
        |> animate [moveAfterFor 2 2] 1900 0 input.time
        |> move (-950, 100),
        rect 30 30
        |> filled red
        |> animate [rotateAnimation] 100 0 input.time
        |> animate [moveAfterFor 3 2] 1900 0 input.time
        |> move (-950, 0),
        rect 30 30
        |> filled red
        |> animate [rotateAnimation] 100 0 input.time
        |> animate [moveAfterFor 4 2] 1900 0 input.time
        |> move (-950, -100),
        rect 30 30
        |> filled red
        |> animate [rotateAnimation] 100 0 input.time
        |> animate [moveAfterFor 5 2] 1900 0 input.time
        |> move (-950, -200),
        text "Second slide"
        |> centered
        |> filled white
        |> scale 10
    ]
    |> transition [rotateAnimation, bounceBack] 500 2000 input.transitionTime input.state

slideFunctions : { get : List (SlideInput -> Shape Msg) }
slideFunctions = { get = [intro, creating1] } -- the slides are in order 

init : Model
init = { time = 0, 
        slideNumber = 0, 
        -- updates slides at start to make the first slide visible
        slides = updateSlides (List.map (\slideFunc -> (Slide Hidden slideFunc 0 0)) slideFunctions.get) 0 0, -- constructs the list of slide functions into a list of type Slide 
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
