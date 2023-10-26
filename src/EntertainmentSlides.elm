module EntertainmentSlides exposing (..)
import GraphicSVG exposing (..)
import SlideUtilTypes exposing (..)
import SlideUtilTypes exposing (Msg)
import Animations exposing (..)

entertainmentSlide1: SlideInput -> Shape Msg
entertainmentSlide1 input =
    group [
        slide (rgba 0 178 255 1) input.time,
        face
        |> move(-250, 250)
        |> animate [(fromTill (TimeData 1 3) (Just tanScaled) (particlizeAndExplodeShape 5 350 36 (75, -100)))] input.time
    ]

face: Shape Msg
face = polygon [(0, 252), (28, 137), (119,43), (216, 8), (310,0), (385, 9), (455,36),
             (503, 71), (541,173), (580, 208), (581, 307), (649, 427), (637, 445),
             (592, 461), (604, 494), (589, 520), (592, 537), (576, 559),
             (578, 607), (559, 650), (493, 673), (423, 685), (409, 745), 
             (61, 734), (111, 576), (14,340)
            ]
    |> filled black
    |> scaleY -1

computer: Shape Msg
computer =   group
  [  
    oval 60 15 
      |> filled grey
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, -45)
      |> addOutline (solid  1 ) black
    ,
    roundedRect 10 25 0 
      |> filled grey
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, -30)
      |> addOutline (solid  1 ) black
    ,
    roundedRect 80 45 0 
      |> filled grey
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, 0)
      |> addOutline (solid  1 ) black
    ,
    roundedRect 70 35 0 
      |> filled blue
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, 0)
      |> addOutline (solid  0 ) black
  ]
 
drawInCircle: Float -> String -> Shape Msg
drawInCircle radius message =
  String.toList message
  |> List.indexedMap Tuple.pair
  |> List.map (drawChar radius (String.length message))
  |> group
  
  
drawChar: Float -> Int -> (Int, Char) -> Shape Msg
drawChar radius count (index, character) =
  text (String.fromChar character)
  |> size 6
  |> fixedwidth
  |> filled black
  |> move (0, radius)
  |> rotate (degrees ((toFloat index) * -360.0 / (toFloat count)))