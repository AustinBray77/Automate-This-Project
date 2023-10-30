module SlidesPlayer exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import BackendFiles.KeyFunctions exposing (..)
import Slides exposing (..)

type alias Model = {time : Float, 
                    slideNumber : Int, 
                    slides : List Slide, 
                    slideTextStartTime : Float}

view : Model -> Collage Msg
view model =
    collage screen.x screen.y
    [
        displaySlides model.slides model.time, -- displays the slides
        displaySlideNum model -- displays the slide number
    ]

displaySlideNum : Model -> Shape Msg
displaySlideNum model =
    group 
    [
        roundedRect 100 100 5
        |> filled white
        |> addOutline (solid 5) black 
        ,
        text (String.fromInt (model.slideNumber + 1))
        |> size 50
        |> centered
        |> filled black
        |> move (0,-15)
    ]
        |> move (-screen.x/2 + 55, screen.y/2 - 55)
        -- makes the current slide number transparent over one second
        -- after having been shown for a second
        |> makeTransparent (
        if model.time - model.slideTextStartTime >= 1 then
            2 - (model.time - model.slideTextStartTime)
        else 
            1
        )

-- displays all slides
displaySlides : List Slide -> Float -> Shape Msg
displaySlides slides time = 
    case slides of
        x::xs -> group (List.append [displaySlides xs time] [displaySlide x time]) -- adds all the slides into a shape after calling there animations
        _ -> filled black (rect 0 0) -- returning a shape that wont be drawn

-- displays a specific slide
displaySlide : Slide -> Float -> Shape Msg
displaySlide s time = 
    case s.state of 
        Hidden -> filled blank (rect 0 0) -- returning a shape that wont be drawn
        _ -> ((s.displaySlideFunc (SlideInput (time - s.startTime) (time - s.transitionTime) s.state)))

update : Msg -> Model -> Model
update msg model =
    case msg of
        Tick t ( keys, _, _ ) ->
            if (anyKeyJustPressed [RightArrow, UpArrow, Space] keys) then -- if any of the next slide keys are pressed
            { 
                model | slideNumber = model.slideNumber + 1,
                time = t,
                slides = updateSlides model.slides (model.slideNumber + 1) t, -- model values have not been updated yet so still have to add one
                -- restarting the start time for the slide number text
                slideTextStartTime = t
            }
            else if (anyKeyJustPressed [LeftArrow, DownArrow] keys) then -- if any of the back keys are pressed go back a slide
            {
                model | slideNumber = max (model.slideNumber - 1) 0,
                time = t,
                slides = updateSlides model.slides (max (model.slideNumber - 1) 0) t -- model values have not been updated yet so still have to subtract one
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
                (Slide Hidden x.displaySlideFunc x.startTime x.transitionTime)
            else 
                (Slide x.state x.displaySlideFunc x.startTime x.transitionTime)] 
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
                (Slide Hidden x.displaySlideFunc x.startTime x.transitionTime)
            else if slideNum == 1 && x.state == Visible then -- if this slide was being shown before slide change
                (Slide Transitioning x.displaySlideFunc x.startTime time)
            else if slideNum == 0 then -- updates the current slides state
                (Slide Visible x.displaySlideFunc time time)
            else if slideNum == -1 then -- if we went back a slide need to hide previous page
                (Slide Hidden x.displaySlideFunc time time)
            else 
                (Slide x.state x.displaySlideFunc x.startTime x.transitionTime)] 
            (if slideNum <= -1 then
                xs -- stop iterating through once we have check the next slide and the previous slide
            else
                (updateSlides xs (slideNum - 1) time))
        _ -> []

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
