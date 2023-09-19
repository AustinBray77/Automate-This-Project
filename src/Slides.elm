module MakingSlideShowUtils exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

-- when talking about slides slide 0 (first slide) would animate at slide 1 (second slide) 
-- so when writing slide numbers remember that you want the current slide to animate one past its index
-- (n+1) if n is index and starts at 0

screen : { x : number, y : number}
screen = { x = 1920, y = 1080 }

view : Model -> Collage userMsg
view model =
    collage screen.x screen.y
        [ 
        group 
        [
            slide black
            ,
            rect 25 25
                |> filled red
                |> move (100,20)
                |> animate [rotateAnimation] (100,0) 2 model
            , 
            circle 35
                |> filled blue
                |> move (50,0)
                |> animate [testing, rotateAnimation] (150,100) 2 model
        ]
            |> animate [bounceBack, slideOut] (2000, 500) 3 model
        ,
        group
        [
          slide red,
          rect 50 50
            |> filled black
            |> move (500,0)
            |> animate [rotateAnimation] (200,0) 1 model
        ]
          |> animate [slideOut] (2000,1500) 2 model
        ,
        slide blue
          |> animate [slideOut] (-2000,-500) 1 model
        ,
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
          |> move (-screen.x/2 + 50,screen.y/2 - 50)
          -- makes the current slide number transparent over one second
          -- after having been shown for a second
          |> makeTransparent (
            if model.time - model.slideTextStartTime >= 1 then
              2 - (model.time - model.slideTextStartTime)
            else 
              1
            )
        ]

-- simple template for a slide background
slide : Color -> Shape a
slide color =
    group [
    rect screen.x screen.y
        |> filled color
    ] 

-- takes in a "vector" that is used for direction and speed, the slide num that this animation should activate on, finally the model to access the starting times for slide animations
slideOut : ( Float, Float ) -> Float -> Shape a -> Shape a
slideOut direction time shape = 
        move (((Tuple.first direction) * time), ((Tuple.second direction)*(time))) shape

bounceBack : ( Float, Float ) -> Float -> Shape a -> Shape a
bounceBack direction time shape =
    move (((Tuple.first direction) * (time^time - 1)), ((Tuple.second direction) * (time^time - 1))) shape

testing : ( Float, Float ) -> Float -> Shape a -> Shape a
testing direction time shape = 
    move (((Tuple.first direction) * (sin time)), ((Tuple.second direction) * (sin time))) shape

-- only first direction var is used
rotateAnimation : ( Float, Float ) -> Float -> Shape a -> Shape a
rotateAnimation direction time shape = 
    rotate (degrees ((Tuple.first direction) * time)) shape

animate : List (( Float, Float ) -> Float -> Shape a -> Shape a) -- take in a list of functions that animate the shape given if we are at the right slide
            -> ( Float, Float ) -> Int -> Model -> Shape a -> Shape a -- takes in all vars needed to do the animation
animate animations direction slideNum model shape =
    let 
        time = getSlideAnimationTime slideNum model
        rtnShape =  
                if slideNum <= model.slideNumber then
                    subAnimate direction time shape animations -- calling all the animations
                else 
                    shape
    in 
        rtnShape

-- used to loop thorugh each animation for the given shape
subAnimate : ( Float, Float ) -> Float -> Shape a -> List (( Float, Float ) -> Float -> Shape a -> Shape a) -> Shape a
subAnimate direction time shape animationFuncs =
    let
        animationFunc = -- used to get the first animation
            case (List.head animationFuncs) of
                Just func -> func
                _ -> slideOut -- in the case that the head of the list is non existant use a default animation
        tempShape = animationFunc direction time shape -- calling the animation
        rtnShape = -- calling all other animations if there are any
            if List.length animationFuncs > 0 then -- only continue if there are more animations to play
                subAnimate direction time tempShape 
                    (case (List.tail animationFuncs) of -- required as List.tail returns maybe list
                        Just list -> list
                        _ -> [])
            else
                shape -- if there are no more animations return the shape
    in 
        rtnShape

-- returns the time that the given sildes animation started
getSlideAnimationTime : Int -> Model -> Float
getSlideAnimationTime slideNumber model = 
    case (getIndex slideNumber model.slideAnimationStarts) of
        Just a -> model.time - a
        Nothing -> 0

-- gets the obj at the given index (starts at 1)
getIndex : Int -> List a -> Maybe a
getIndex index list =
   if  (List.length list) >= index then

        List.take (index) list
        |> List.reverse 
        |> List.head 
   else 
      Nothing

keyJust: (Keys -> KeyState) -> Keys -> Bool
keyJust keyInfo key =
  keyInfo key == JustDown
  
anyKeyJust: List Keys -> (Keys -> KeyState) -> Bool
anyKeyJust keys keyInfo =
  (List.filter (keyJust keyInfo) keys
    |> List.length) >= 1

update : Msg -> Model -> Model
update msg model =
    case msg of
        Tick t ( keys, _, _ ) ->
            if (anyKeyJust [RightArrow, UpArrow, Space] keys) then
            { 
                -- next slide
                model | slideNumber = model.slideNumber + 1,
                time = t,
                slideAnimationStarts = model.slideAnimationStarts ++ [t],
                -- restarting the start time for the slide number text
                slideTextStartTime = t
            }
            else if (anyKeyJust [LeftArrow, DownArrow] keys) then
            {
                -- go back a slide
                model | slideNumber = max (model.slideNumber - 1) 0,
                time = t,
                slideAnimationStarts = List.take (model.slideNumber - 1) model.slideAnimationStarts,
                -- restarting the start time for the slide number text
                slideTextStartTime = t
            }
            else
            { 
                model | slideNumber = model.slideNumber,
                time = t,
                slideAnimationStarts = model.slideAnimationStarts,
                slideTextStartTime = model.slideTextStartTime
            }

type Msg = Tick Float GetKeyState

type alias Model = {time : Float, 
                    slideNumber : Int, 
                    slideAnimationStarts : List Float, 
                    slideTextStartTime : Float}

init : Model
init = { time = 0, 
        slideNumber = 0, 
        slideAnimationStarts = [], 
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
