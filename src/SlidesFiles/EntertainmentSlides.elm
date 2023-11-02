module SlidesFiles.EntertainmentSlides exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)
{-|
Intro slide for the entertainment section
Made by: Austin
-}
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
    |> transition [(fromTill (TimeData 0 2 Once) (Just tanScaled) (particlizeAndExplodeShape 100 1000 4 (0, 0)))] input.transitionTime input.state

{-|
First Content Slide for the entertainment section,
Polyphonic HMI and A&Rs
Made by: Austin
-}
entertainmentSlide1: SlideInput -> Shape Msg
entertainmentSlide1 input =
    group [
        background7 input.time,
        text "A&Rs:"
        |> size 144 
        |> alignLeft 
        |> filled black
        |> move (-500, 400)
        |> animate [(fromTill (TimeData 10 12 Once) (Just easeInAndOut) (hideShape (RGBA 0 0 0 1)))] input.time,
        group [
          face
          |> scale 0.4
          |> move(-250, 150)
          |> animate [(fromTill (TimeData 12 15 Once) (Just tanScaled) (bounceBack 1000 -1000))] input.time,
          face
          |> scaleX -1
          |> scale 0.5
          |> move(350, -150)
          |> animate [(fromTill (TimeData 12 15  Once) (Just tanScaled) (bounceBack -1000 1000))] input.time,
          face
          |> scale 0.45
          |> move(-400, -100)
          |> animate [(fromTill (TimeData 12 15 Once) (Just tanScaled) (bounceBack 1000 1000))] input.time,
          face
          |> scaleX -1
          |> scale 0.3
          |> move(250, 200)
          |> animate [(fromTill (TimeData 12 15 Once) (Just tanScaled) (bounceBack -1000 -1000))] input.time
        ]
        |> animate [(fromTill (TimeData 14.5 14.5 Once) Nothing (hideShape (RGBA 0 0 0 1)))] input.time,
        computer
        |> move (0, -1000)
        |> animate [(fromTill (TimeData 18 21 Once) (Just easeOut) (moveAni 0 1100))] input.time,
        drawInCircle 125 "Polyphonic 🎵  HMI 🎵 "
        |> animate [(fromTill (TimeData 23 25 Once) (Just easeInAndOut) (fadeShapeToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1))),
                    (fromTill (TimeData 23 37 RepeatFromStart) Nothing (rotateAni -360))] input.time
        |> move (0, 100)
    ]
    |> transition [(bounceBack -1000 1000)] input.transitionTime input.state

{-|
Second Content Slide for the entertainment section,
About David Cope and the Bach Bot
Made by: Austin
-}
entertainmentSlide2: SlideInput -> Shape Msg
entertainmentSlide2 input =
    group [
        background4 input.time,
        group [ copeDrawing
          |> move (-75, -300),
          text "Dr. David Cope (USC) \\/"
          |> size 62
          |> filled black
          |> move (-850, 100)
          |> animate [(fromTill (TimeData 4 6 Once) Nothing (hideShape (RGBA 0 0 0 1)))] input.time
        ]
        |> animate [(fromTill (TimeData 25 27 Once) (Just easeIn) (moveAni -1000 -1000))] input.time
        |> transition [(fromTill (TimeData 0 0.01 Once) Nothing (hideShape (RGBA 255 255 255 255)))] input.transitionTime input.state
        ,
        group [ 
          circle 30
          |> filled white
          |> addOutline (solid 5) black
          |> move (-175, 0)
          |> animate [(fromTill (TimeData 8 10 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 5))] input.time,
          circle 40
          |> filled white
          |> addOutline (solid 5) black
          |> move (-100, 50)
          |> animate [(fromTill (TimeData 10 12 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 5))] input.time,
          circle 50
          |> filled white
          |> addOutline (solid 5) black
          |> move (0, 125)
          |> animate [(fromTill (TimeData 12 14 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 5))] input.time,
          speechBubble
          |> scale 2
          |> move (550, -75)
          |> animate [(fromTill (TimeData 14 16 Once) (Nothing) (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 255 255 255 1))),
                      (fromTill (TimeData 14 16 Once) (Nothing) (fadeOutlineToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1) 20))] input.time,
          text "Algorithms vs Bach???"
          |> size 74
          |> filled black
          |> move (-200, 260)
          |> animate [(fromTill (TimeData 14 16 Once) (Nothing) (fadeShapeToColor (RGBA 0 0 0 0) (RGBA 0 0 0 1)))] input.time
        ]
        |> animate [(fromTill (TimeData 25 27 Once) (Just easeIn) (moveAni 1000 1000))] input.time,
        fullCrowd input.time
        |> scale 3
        |> move (-1000, 1000)
        |> move (-550, 0)
        |> animate [(fromTill (TimeData 27 29 Once) (Just easeOut) (moveAni 1000 -1000))] input.time,
        flyingTextAnimation "🎶" -700 200 input.time
        |> move (input.time * sin(input.time), -15 * input.time * cos(input.time)),
        flyingTextAnimation "🎵" -700 0 input.time
        |> move (3 * input.time * sin(input.time), 18 * input.time * cos(input.time)),
        flyingTextAnimation "🎹" -700 -200 input.time
        |> move (2 * input.time * sin(input.time), -25 * input.time * cos(input.time)),
        flyingTextAnimation "🎶" -400 500 input.time
        |> move (20 * input.time * sin(input.time), -2 * input.time * cos(input.time)),
        flyingTextAnimation "🎵" -400 0 input.time
        |> move (23 * input.time * sin(input.time), 3 * input.time * cos(input.time)),
        flyingTextAnimation "🎹" -400 -500 input.time
        |> move (22 * input.time * sin(input.time), -5 * input.time * cos(input.time)),
        text "OMG It's Bach!"
        |> size 52
        |> filled black
        |> move(-700, 200)
        |> animate [(fromTill (TimeData 32 33 Once) (Just easeInAndOut) (showShape (RGBA 0 0 0 1)))] input.time,
        text "Bach!! Sounds so good"
        |> size 52
        |> filled black
        |> move(-550, 300)
        |> animate [(fromTill (TimeData 33 34 Once) (Just easeInAndOut) (showShape (RGBA 0 0 0 1)))] input.time,
        text "This is incredible! A computer could never do this!"
        |> size 52
        |> filled black
        |> move(-900, 400)
        |> animate [(fromTill (TimeData 34 35 Once) (Just easeInAndOut) (showShape (RGBA 0 0 0 1)))] input.time,
        computer
        |> scale 0.5
        |> move (1000, -1000)
        |> move (550, 0)
        |> animate [(fromTill (TimeData 27 29 Once) (Just easeOut) (moveAni -1000 1000))] input.time
    ]
    |> transition [(bounceBack 1000 1000)] input.transitionTime input.state

{-|
Conclusion slide for the entertainment section
Made by: Austin
-}
entertainmentConclusion: SlideInput -> Shape Msg
entertainmentConclusion input = group 
    [
      background4 input.time,
      text (typeWriter "We aren't artists, why should we care?" 0.05 0.2 (TimeData 0 1000 Once) input.time)
      |> alignLeft
      |> size 84
      |> filled black
      |> move (-650, 400),
      group [ 
        face
        |> move (-800, 200),
        text "You"
        |> size 156
        |> filled white
        |> move (-600, -200)
      ]
      |> animate [(fromTill (TimeData 5.35 7 Once) (Just easeOut) (moveAni 800 0)),
                  (fromTill (TimeData 7 10 Once) (Just tanScaled) (particlizeAndExplodeShape 5 360 16 (350, -165)))] input.time,
      group [ 
        computer
        |> scale 0.5,
        sticker "New" red
        |> move (-1500, 1500)
        |> move (-50, 50)
        |> animate [(fromTill (TimeData 12 12.5 Once) (Just easeIn) (moveAni 1500 -1500))] input.time,
        sticker "Improved" green
        |> rotate (-pi/5)
        |> move (1500, -1500)
        |> move (50, 25)
        |> animate [(fromTill (TimeData 14 14.5 Once) (Just easeIn) (moveAni -1500 1500))] input.time,
        sticker "Better than you at elm" orange
        |> rotate (-pi/7)
        |> move (0, -1500)
        |> move (100, -50)
        |> animate [(fromTill (TimeData 16 16.5 Once) (Just easeIn) (moveAni 0 1500))] input.time
      ]
      |> move (-1500, 0)
      |> animate [(fromTill (TimeData 4 7 Once) (Just easeInAndOut) (moveAni 1200 0))] input.time,
      group [ 
        group [   
        line (400, -200) (animateLine (400, -200) (500, -100) Nothing (TimeData 12 13 Once) input.time)
        |> outlined (solid 10) red,
        line (500, -100) (animateLine (500, -100) (600, -150) Nothing (TimeData 13 14 Once) input.time)
        |> outlined (solid 10) red,
        line (600, -150) (animateLine (600, -150) (700, -50) Nothing (TimeData 14 15 Once) input.time)
        |> outlined (solid 10) red,
        line (700, -50) (animateLine (700, -50) (800, 150) Nothing (TimeData 15 16 Once) input.time)
        |> outlined (solid 10) red,
        ngon 3 35
        |> filled red
        |> rotate (pi/4)
        |> animate [
                    (fromTill (TimeData 13 13 Once) Nothing (rotateAni -75)),
                    (fromTill (TimeData 14 14 Once) Nothing (rotateAni 75)),
                    (fromTill (TimeData 15 15 Once) Nothing (rotateAni 20)),
                    (fromTill (TimeData 12 13 Once) Nothing (moveAni 100 100)),
                    (fromTill (TimeData 13 14 Once) Nothing (moveAni 100 -50)),
                    (fromTill (TimeData 14 15 Once) Nothing (moveAni 100 100)),
                    (fromTill (TimeData 15 16 Once) Nothing (moveAni 100 200))] input.time
        |> move (400, -200)
        ]
        |> animate [(fromTill (TimeData 10 12 Once) (Just easeInAndOut) (showShape (RGBA 255 0 0 1)))] input.time,
        square 425
        |> outlined (solid 5) (white)
        |> move (612.5, 12.5)
        |> animate [(fromTill (TimeData 10 12 Once) (Just easeInAndOut) (fadeOutlineToColor (RGBA 120 120 120 0) (RGBA 120 120 120 1) 5))] input.time,
        text (typeWriter "Time" 0.1 0.2 (TimeData 10 1000 Once) input.time)
        |> size 74
        |> filled black
        |> move (535, -265),
        text (typeWriter "Algorithms" 0.1 0.2 (TimeData 10 1000 Once) input.time)
        |> size 74
        |> filled black
        |> rotate (pi/2)
        |> move (365, -150)
      ]
      |> move (-200, 0)
    ] 
    |> transition [(fromTill (TimeData 0 2 Once) (Just easeInAndOut) (scaleFromAni (1, 1) (0, 0)))] input.transitionTime input.state

{-|
Sticker object used on the conclusion slide
Made by: Austin
-}
sticker: String -> Color -> Shape Msg
sticker string color =
  group [
    curve (-68.88,-44.72) [Pull (-67.88,-36.09) (-66.87,-27.46),Pull (-71.04,-29.33) (-75.21,-31.20),Pull (-73.20,-26.89) (-71.19,-22.57),Pull (-80.82,-24.16) (-90.46,-25.74),Pull (-83.41,-20.13) (-76.36,-14.52),Pull (-80.82,-12.51) (-85.28,-10.49),Pull (-81.25,-8.341) (-77.23,-6.184),Pull (-84.71,-2.157) (-92.18,1.8696),Pull (-82.69,3.5955) (-73.20,5.3213),Pull (-79.24,11.937) (-85.28,18.552),Pull (-76.36,18.408) (-67.45,18.265),Pull (-70.61,22.292) (-73.77,26.319),Pull (-68.74,25.887) (-63.71,25.456),Pull (-67.16,31.784) (-70.61,38.112),Pull (-63.71,35.092) (-56.80,32.071),Pull (-58.67,42.858) (-60.54,53.644),Pull (-53.64,44.728) (-46.74,35.811),Pull (-44.29,43.721) (-41.85,51.631),Pull (-39.40,45.015) (-36.96,38.4),Pull (-32.93,43.289) (-28.90,48.179),Pull (-27.46,43.146) (-26.03,38.112),Pull (-20.56,45.303) (-15.10,52.494),Pull (-13.66,43.289) (-12.22,34.085),Pull (-5.033,40.413) (2.1573,46.741),Pull (1.4382,37.680) (0.7191,28.620),Pull (5.0337,31.065) (9.3483,33.510),Pull (7.6224,28.907) (5.8966,24.305),Pull (14.525,26.319) (23.155,28.332),Pull (16.395,22.435) (9.6359,16.539),Pull (13.950,15.101) (18.265,13.662),Pull (14.525,11.217) (10.786,8.7730),Pull (17.689,4.8898) (24.593,1.0067),Pull (15.244,-0.862) (5.8966,-2.732),Pull (12.224,-9.348) (18.552,-15.96),Pull (9.3483,-15.67) (0.1438,-15.38),Pull (3.3078,-19.70) (6.4719,-24.01),Pull (0.1438,-24.30) (-6.184,-24.59),Pull (-2.444,-30.77) (1.2943,-36.96),Pull (-6.471,-33.51) (-14.23,-30.05),Pull (-11.93,-39.98) (-9.635,-49.90),Pull (-16.68,-42.57) (-23.73,-35.23),Pull (-25.74,-43.00) (-27.75,-50.76),Pull (-30.20,-43.86) (-32.64,-36.96),Pull (-35.66,-41.27) (-38.68,-45.59),Pull (-39.83,-40.84) (-40.98,-36.09),Pull (-46.16,-42.71) (-51.34,-49.33),Pull (-53.06,-40.70) (-54.79,-32.07),Pull (-61.69,-37.96) (-68.88,-44.72)]
    |> filled color
    |> rotate (-pi/6)
    |> scaleX (1 + (0.12 * toFloat (String.length string)))
    |> scaleY (1 + (0.05 * toFloat (String.length string)))
    |> rotate (pi/6),
    text string
    |> size 34
    |> centered
    |> filled white
    |> rotate (pi/6)
    |> move (-30, -10)
    |> move ( -(3.5 * toFloat (String.length string)), (-1 * toFloat (String.length string)))
  ]

{-|
Animation to make text fly between two points
Used to make the emojis fly around in entertainmentSlide2
Made By: Austin
-}
flyingTextAnimation: String -> Float -> Float -> Float -> Shape Msg
flyingTextAnimation string x y time =
    text string
    |> size 74
    |> filled black
    |> animate [(fromTill (TimeData 30 30 Once) Nothing (showShape (RGBA 0 0 0 1))), 
                (fromTill (TimeData 30 33 RepeatLoop) (Just easeIn) (moveAni x y))] time

{-|
Blank face shape
Used in many slides, including but not limited to;
  - entertainmentSlide1
  - entertainmentSlideConclusion
Made By: Austin
-}
face: Shape Msg
face = polygon [(0, 252), (28, 137), (119,43), (216, 8), (310,0), (385, 9), (455,36),
             (503, 71), (541,173), (580, 208), (581, 307), (649, 427), (637, 445),
             (592, 461), (604, 494), (589, 520), (592, 537), (576, 559),
             (578, 607), (559, 650), (493, 673), (423, 685), (409, 745), 
             (61, 734), (111, 576), (14,340)
            ]
    |> filled black
    |> scaleY -1

{-|
Grey and blue computer shape
Used in many slides
Made By: Austin
-}
computer: Shape Msg
computer =   group
  [  
    oval 60 15 
      |> filled grey
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, -45)
    ,
    roundedRect 10 25 0 
      |> filled grey
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, -30)
    ,
    roundedRect 80 45 0 
      |> filled grey
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, 0)
    ,
    roundedRect 70 35 0 
      |> filled blue
      |> scaleX 1
      |> scaleY 1
      |> rotate (degrees 0 )
      |> move (0, 0)
  ]
  |> addOutline (solid 2) black
  |> scale 12

{-|
Drawing of Dr. David Cope
Used in the entertainmentSlide2 function
Made By: Austin
-}
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

{-|
Speech bubble shape
Used in the entertainmentSlide2 function
Made By: Austin
-}
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

{-|
Full crown shape to represent a crowd of people
Used in the entertainmentSlide2 function
Made By: Austin
-}
fullCrowd: Float -> Shape Msg
fullCrowd time = 
  group [
      crowd
      |> scale 0.4
      |> move (0, 30)
      |> animate [(fromTill (TimeData 31 34 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 15))] time,
      crowd
      |> scale 0.4
      |> move (-30, 30)
      |> animate [(fromTill (TimeData 31 34 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 5))] time,
      crowd
      |> scale 0.4
      |> move (30, 30)
      |> animate [(fromTill (TimeData 31.5 34 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 20))] time,
      crowd
      |> scale 0.5
      |> move (50, 25)
      |> animate [(fromTill (TimeData 30.5 33 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 10))] time,
      crowd
      |> scale 0.6
      |> move (-15, 10)
      |> animate [(fromTill (TimeData 31.25 34 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 17.5))] time,
      crowd
      |> scale 0.7
      |> move (75, 0)
      |> animate [(fromTill (TimeData 31 35 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 15))] time,
      crowd
      |> scale 0.7
      |> move (15, 0)
      |> animate [(fromTill (TimeData 31.75 34.25 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 12.5))] time,
      crowd
      |> scale 0.8
      |> move (45, -10)
      |> animate [(fromTill (TimeData 31 34 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 15))] time,
      crowd
      |> scale 0.9
      |> move (-10, -10)
      |> animate [(fromTill (TimeData 31.3 34.6 Once) (Just (\x -> (sin (6*pi*(x+0.25)) )/2 + 0.5)) (moveAni 0 16))] time
  ]

{-|
Part of a crowd, used to form a full crowd
Used in the entertainmentSlide2 function
Made By: Austin
-}
crowd: Shape Msg
crowd = group (
  [
  curve (-8.971,16.867) [Pull (-7.775,22.250) (-6.579,27.633),Pull (-5.502,31.342) (-4.426,35.050),Pull (-1.674,35.289) (1.0766,35.528),Pull (2.8710,34.452) (4.6654,33.375),Pull (5.8616,29.428) (7.0579,25.480),Pull (7.6560,23.207) (8.2542,20.934),Pull (9.9289,19.379) (11.603,17.824),Pull (11.962,16.269) (12.321,14.714),Pull (12.082,11.962) (11.842,9.2112),Pull (11.962,6.3401) (12.082,3.4691),Pull (11.723,1.9140) (11.364,0.3588),Pull (11.364,-0.957) (11.364,-2.272),Pull (11.125,-3.828) (10.885,-5.383),Pull (-0.717,-5.143) (-12.32,-4.904),Pull (-13.39,0) (-14.47,4.9046),Pull (-14.71,8.2542) (-14.95,11.603),Pull (-14.95,14.115) (-14.95,16.628),Pull (-12.8,16.986) (-10.64,17.345)]
  ,curve (-86.25,-21.17) [Pull (-87.08,-14.95) (-87.92,-8.732),Pull (-87.32,-3.947) (-86.72,0.8373),Pull (-84.81,4.3065) (-82.90,7.7757),Pull (-77.15,10.407) (-71.41,13.039),Pull (-70.93,16.149) (-70.45,19.259),Pull (-71.53,22.011) (-72.61,24.762),Pull (-71.65,28.112) (-70.69,31.461),Pull (-68.42,33.495) (-66.15,35.528),Pull (-63.64,35.768) (-61.12,36.007),Pull (-59.69,34.452) (-58.25,32.897),Pull (-56.82,30.624) (-55.38,28.351),Pull (-55.14,24.403) (-54.90,20.456),Pull (-54.90,19.140) (-54.90,17.824),Pull (-55.14,14.714) (-55.38,11.603),Pull (-51.08,9.4504) (-46.77,7.2971),Pull (-44.97,1.7943) (-43.18,-3.708),Pull (-43.30,-8.134) (-43.42,-12.56),Pull (-44.02,-14.71) (-44.62,-16.86),Pull (-44.38,-19.14) (-44.14,-21.41)]
  ,curve (-5.622,-34.81) [Pull (-5.742,-32.53) (-5.861,-30.26),Pull (-2.631,-29.18) (0.5981,-28.11),Pull (1.0766,-21.89) (1.5551,-15.67),Pull (0.9570,-9.450) (0.3588,-3.229),Pull (-0.957,1.6747) (-2.272,6.5794),Pull (-6.818,9.4504) (-11.36,12.321),Pull (-14.35,13.158) (-17.34,13.996),Pull (-17.82,16.628) (-18.30,19.259),Pull (-17.10,23.087) (-15.91,26.915),Pull (-16.38,29.428) (-16.86,31.940),Pull (-19.49,33.614) (-22.13,35.289),Pull (-24.76,35.887) (-27.39,36.485),Pull (-28.82,34.571) (-30.26,32.657),Pull (-31.22,30.265) (-32.17,27.872),Pull (-31.22,24.882) (-30.26,21.891),Pull (-29.30,19.618) (-28.35,17.345),Pull (-28.23,15.072) (-28.11,12.8),Pull (-29.66,11.364) (-31.22,9.9289),Pull (-34.09,8.9719) (-36.96,8.0149),Pull (-38.63,7.5364) (-40.31,7.0579),Pull (-41.86,-2.512) (-43.42,-12.08),Pull (-43.66,-17.10) (-43.90,-22.13),Pull (-42.46,-25.48) (-41.03,-28.82),Pull (-39.47,-28.82) (-37.92,-28.82),Pull (-35.88,-28.59) (-33.85,-28.35),Pull (-33.25,-30.74) (-32.65,-33.13)]
  ,curve (-27.15,-35.76) [Pull (-29.18,-31.94) (-31.22,-28.11),Pull (-33.73,-28.11) (-36.24,-28.11),Pull (-36.96,-19.85) (-37.68,-11.60),Pull (-38.87,-5.143) (-40.07,1.3158),Pull (-44.02,5.0242) (-47.97,8.7327),Pull (-52.39,8.6130) (-56.82,8.4934),Pull (-60.05,5.5028) (-63.28,2.5121),Pull (-64.71,-3.229) (-66.15,-8.971),Pull (-66.99,-14.71) (-67.82,-20.45),Pull (-68.78,-23.32) (-69.74,-26.19),Pull (-72.85,-27.51) (-75.96,-28.82),Pull (-76.32,-31.22) (-76.68,-33.61),Pull (-76.68,-34.33) (-76.68,-35.05)]
  ]
  |> List.map (\x -> x |> filled (rgba 50 50 50 1) |> addOutline (solid 2) black)
  )

{-|
Draws a string in a circle of a given radius
Used in the entertainmentSlide1 function
Made By: Austin
-}
drawInCircle: Float -> String -> Shape Msg
drawInCircle radius message =
  String.toList message
  |> List.indexedMap Tuple.pair
  |> List.map (drawChar radius (String.length message))
  |> group
  
{-|
Draws each character to draw a string in a circle
Used by the drawInCircle function
Made By: Austin
-}
drawChar: Float -> Int -> (Int, Char) -> Shape Msg
drawChar radius count (index, character) =
  text (String.fromChar character)
  |> size 68
  |> fixedwidth
  |> filled black
  |> move (0, radius)
  |> rotate (degrees ((toFloat index) * -360.0 / (toFloat count)))