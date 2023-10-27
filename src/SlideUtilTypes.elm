module SlideUtilTypes exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

type Msg = Tick Float GetKeyState 

type alias RGBA = {
    r: Float,
    g: Float,
    b: Float,
    a: Float
    }

type Repeat = RepeatFromStart | RepeatFromStartWithPause | RepeatLoop | Once

type alias TimeData = {
    start: Float,
    end: Float,
    repeating: Repeat
    }

-- type input for antimation functions
type alias AnimateFuncInput = { 
    time : Float, 
    shape : Shape Msg
    }

type alias Ease = (Float -> Float)

-- can transition for a max of 3 seconds
type SlideState = Visible | Transitioning | Hidden

-- the input that a slides function is required to have
type alias SlideInput = {
    time : Float,
    transitionTime : Float,
    state : SlideState}

-- content is used for the content of the slide
-- slide is used for moving the slide out of view
type AnimationType = SlideAnimation | ContentAnimation

-- backend Slide defenition
type alias Slide =
    {state : SlideState, -- the state of this slide
     displaySlide : (SlideInput -> Shape Msg), -- function that creates the slide
     startTime : Float, -- the time this slide started being seen (used for slide animtation)
     transitionTime : Float -- the time that the transition started
    } 


-- storage for screen size
screen : { x : number, y : number}
screen = { x = 1920, y = 1080 }

-- template for a slide background
slide : Color -> Float -> Shape Msg
slide color time =
    group [
    rect screen.x screen.y
        |> filled color
    ] 