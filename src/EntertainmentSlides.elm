module EntertainmentSlides exposing (..)
import GraphicSVG exposing (..)
import SlideUtilTypes exposing (..)
import SlideUtilTypes exposing (Msg)
import Animations exposing (..)
import BackgroundSlides exposing (..)

entertainmentIntroSlide: SlideInput -> Shape Msg
entertainmentIntroSlide input = 
    group [
      background5 input.time,
      group
      [  
        text (typeWriter "Algorithms and Art" 0.2 0.2 (TimeData 0 2 Once) input.time)
        |> size 144 
        |> alignLeft 
        |> filled black
        |> move (-575, -10)
        |> addOutline (solid  1 ) black
      ]
    ]

entertainmentSlide1: SlideInput -> Shape Msg
entertainmentSlide1 input =
    group [
        background7 input.time,
        text "A&Rs:"
        |> size 144 
        |> alignLeft 
        |> filled black
        |> move (-500, 400)
        |> animate [(fromTill (TimeData 3 5 Once) (Just easeInAndOut) (hideShape (RGBA 0 0 0 1)))] input.time,
        group [
          face
          |> scale 0.4
          |> move(-250, 150),
          face
          |> scaleX -1
          |> scale 0.5
          |> move(350, -150),
          face
          |> scale 0.45
          |> move(-400, -100),
          face
          |> scaleX -1
          |> scale 0.3
          |> move(250, 200)
        ]
        |> animate [(fromTill (TimeData 4.5 4.5 Once) Nothing (hideShape (RGBA 0 0 0 1)))] input.time
        |> animate [(fromTill (TimeData 3 5 Once) (Just tanScaled) (bounceBack 1000 1000))] input.time,
        computer
        |> move (0, -1000)
        |> animate [(fromTill (TimeData 5 7 Once) (Just easeOut) (moveAni 0 1100))] input.time,
        drawInCircle 125 "Polyphonic 🎵  HMI 🎵 "
        |> animate [(fromTill (TimeData 7 9 Once) (Just easeInAndOut) (fadeShapeToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1))),
                    (fromTill (TimeData 7 21 RepeatFromStart) Nothing (rotateAni -360))] input.time
        |> move (0, 100)
    ]
    |> transition [(moveAni 1000 2000)] input.transitionTime input.state

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
  |> scale 12
 
drawInCircle: Float -> String -> Shape Msg
drawInCircle radius message =
  String.toList message
  |> List.indexedMap Tuple.pair
  |> List.map (drawChar radius (String.length message))
  |> group
  
  
drawChar: Float -> Int -> (Int, Char) -> Shape Msg
drawChar radius count (index, character) =
  text (String.fromChar character)
  |> size 68
  |> fixedwidth
  |> filled black
  |> move (0, radius)
  |> rotate (degrees ((toFloat index) * -360.0 / (toFloat count)))