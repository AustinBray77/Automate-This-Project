module SlidesFiles.EntertainmentSlides exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

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

entertainmentSlide2: SlideInput -> Shape Msg
entertainmentSlide2 input =
    group [
        background4 input.time,
        copeDrawing
        |> move (-75, -300),
        circle 30
        |> filled white
        |> addOutline (solid 5) black
        |> move (-175, 0)
        |> animate [(fromTill (TimeData 4 5 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 5))] input.time,
        circle 40
        |> filled white
        |> addOutline (solid 5) black
        |> move (-100, 50)
        |> animate [(fromTill (TimeData 5 6 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 5))] input.time,
        circle 50
        |> filled white
        |> addOutline (solid 5) black
        |> move (0, 125)
        |> animate [(fromTill (TimeData 6 7 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 5))] input.time,
        speechBubble
        |> scale 2
        |> move (550, -75)
        |> animate [(fromTill (TimeData 7 8 Once) (Nothing) (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 255 255 255 1))),
                    (fromTill (TimeData 7 8 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 20))] input.time
    ]
    |> transition [(bounceBack 1000 1000)] input.transitionTime input.state

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

copeDrawing: Shape Msg
copeDrawing =
  group [ 
    curve (-84.09,19.738) 
    [
      Pull (-83.73,14.594) (-83.37,9.4504),Pull (-81.46,5.7420) (-79.55,2.0336),Pull (-76.44,-1.674) (-73.33,-5.383),Pull (-70.57,-7.057) (-67.82,-8.732),Pull (-63.76,-10.04) (-59.69,-11.36),Pull (-56.70,-11.48) (-53.71,-11.60),Pull (-48.56,-8.852) (-43.42,-6.100),Pull (-40.79,-3.708) (-38.16,-1.315),Pull (-35.64,1.1962) (-33.13,3.7084),Pull (-31.22,12.441) (-29.30,21.173),Pull (-26.91,34.332) (-24.52,47.491),Pull (-28.35,55.506) (-32.17,63.521),Pull (-53.71,63.641) (-75.24,63.760),Pull (-77.99,58.975) (-80.74,54.190),Pull (-83.61,50.960) (-86.48,47.730),Pull (-89.36,46.773) (-92.23,45.816),Pull (-92.94,41.988) (-93.66,38.160),Pull (-93.18,33.854) (-92.71,29.547),Pull (-90.91,25.001) (-89.12,20.456),Pull (-87.92,19.857) (-86.72,19.259),Pull (-85.41,19.738) (-84.09,20.216)
    ]
    |> filled (rgb 255 208 191)
    |> addOutline (solid 2) black,
    
    curve (-45.09,-7.057) [Pull (-43.18,-7.177) (-41.27,-7.297),Pull (-39.23,-7.895) (-37.20,-8.493),Pull (-34.57,-10.64) (-31.94,-12.8),Pull (-28.59,-14.23) (-25.24,-15.67),Pull (-23.44,-16.38) (-21.65,-17.10),Pull (-18.78,-17.22) (-15.91,-17.34),Pull (-11.48,-17.46) (-7.057,-17.58),Pull (-1.674,-17.22) (3.7084,-16.86),Pull (4.5457,-16.86) (5.3831,-16.86),Pull (5.5028,-11.96) (5.6224,-7.057),Pull (2.2728,-1.555) (-1.076,3.9476),Pull (-2.033,6.4598) (-2.990,8.9719),Pull (-5.981,10.407) (-8.971,11.842),Pull (-9.689,12.082) (-10.40,12.321),Pull (-12.91,16.747) (-15.43,21.173),Pull (-16.86,23.087) (-18.30,25.001),Pull (-19.49,26.557) (-20.69,28.112),Pull (-22.72,32.418) (-24.76,36.725),Pull (-25.24,38.878) (-25.71,41.031),Pull (-26.55,40.672) (-27.39,40.314),Pull (-28.23,34.452) (-29.06,28.590),Pull (-29.18,27.035) (-29.30,25.480),Pull (-28.71,22.609) (-28.11,19.738),Pull (-27.39,17.824) (-26.67,15.910),Pull (-26.31,14.594) (-25.95,13.278),Pull (-27.39,8.8523) (-28.82,4.4261),Pull (-29.42,2.5121) (-30.02,0.5981),Pull (-30.86,-1.076) (-31.70,-2.751),Pull (-33.85,-2.033) (-36.00,-1.315),Pull (-37.80,-1.315) (-39.59,-1.315),Pull (-41.39,-2.871) (-43.18,-4.426),Pull (-44.02,-5.143) (-44.85,-5.861)]
    |> filled (rgb 255 208 191)
    |> addOutline (solid 2) black,
    
    curve (-83.14,8.9719) [Pull (-83.49,5.7420) (-83.85,2.5121),Pull (-85.77,2.1532) (-87.68,1.7943),Pull (-89.95,0.2392) (-92.23,-1.315),Pull (-93.78,-3.110) (-95.34,-4.904),Pull (-95.46,-11.12) (-95.58,-17.34),Pull (-59.45,-17.22) (-23.32,-17.10),Pull (-29.54,-13.63) (-35.76,-10.16),Pull (-39.35,-9.091) (-42.94,-8.014),Pull (-45.33,-8.971) (-47.73,-9.928),Pull (-49.64,-11.00) (-51.55,-12.08),Pull (-54.42,-12.68) (-57.30,-13.27),Pull (-61.12,-11.84) (-64.95,-10.40),Pull (-68.66,-8.134) (-72.37,-5.861),Pull (-74.76,-3.469) (-77.15,-1.076),Pull (-78.59,2.0336) (-80.02,5.1439),Pull (-81.46,6.3401) (-82.90,7.5364)]
    |> filled grey
    |> addOutline (solid 2) black
  ]
  |> scale 5

speechBubble: Shape Msg
speechBubble = 
  group
  [  
      List.foldr union (rect 0 0 |> ghost)
      [      
        oval 100 55 
          |> filled white
          |> move (-332.0062695924765, 218.0564263322884)
          |> addOutline (solid  5 ) black
        ,
        oval 300 150 
          |> filled white
          |> move (-207.74294670846413, 184.32601880877735)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-292.82131661442, 240.31347962382443)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-253.63636363636354, 260.31347962382443)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-161.2225705329155, 105.5799373040752)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-125.42319749216315, 123.32288401253913)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-93.00940438871488, 146.7084639498432)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-70.75235109717883, 177.99373040752346)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-86.86520376175564, 209.2789968652037)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-113.13479623824466, 240.56426332288396)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-147.30407523510985, 254.9216300940438)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-204.0438871473356, 263.63636363636357)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-289.24764890282154, 123.1347962382445)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-227.49216300940455, 107.0219435736677)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-350.8777429467085, 180)
          |> addOutline (solid  5 ) black
        ,
        oval 100 55 
          |> filled white
          |> move (-326.1755485893419, 147.1473354231975)
          |> addOutline (solid  5 ) black
      ]
      |> addOutline (solid  20 ) black
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
  |> size 68
  |> fixedwidth
  |> filled black
  |> move (0, radius)
  |> rotate (degrees ((toFloat index) * -360.0 / (toFloat count)))