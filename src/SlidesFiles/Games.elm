module SlidesFiles.Games exposing (..)

import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

chessBoardHelper: Int -> Int -> Shape Msg -> Shape Msg
chessBoardHelper x y currentShape = 
  if x < 8 then
    chessBoardHelper (x+1) y (group 
    [
      currentShape,
      rect 80 80
      |> filled (if (modBy 2 (x+y)) == 0 then black else white)
      |> move (toFloat(x*80), toFloat(y*80))
    ])
  else if x == 8 && y < 7 then
    chessBoardHelper 0 (y+1) currentShape 
  else
    currentShape
    
chessBoard: Shape Msg
chessBoard = 
  group
  [
    chessBoardHelper 0 0 (rect 640 640 |> outlined (solid 5) black |> move (280, 280))
    |> move (-280, -280)
  ]

rook: Color -> Color -> Shape Msg
rook color outlineColor = 
  group [  
    roundedRect 100 10 0 
      |> filled color
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 90 20 0 
      |> filled color
      |> move (0, 15)
      |> addOutline (solid  3 ) outlineColor
    ,
    ngon 3 8 
      |> filled color
      |> rotate (degrees -30 )
      |> move (37, 30)
      |> addOutline (solid  3 ) outlineColor
    ,
    ngon 3 8 
      |> filled color
      |> rotate (degrees -30 )
      |> move (-37.095115681234006, 30)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 70 12 0 
      |> filled color
      |> move (0, 33)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 70 60 0 
      |> filled color
      |> move (0, 70)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 90 15 0 
      |> filled color
      |> move (-1.3881748071979436, 120.38817480719794)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 20 30 0 
      |> filled color
      |> move (0, 128)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 20 30 0 
      |> filled color
      |> move (39.434447300771204, 128)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 20 30 0 
      |> filled color
      |> move (-41.07969151670952, 128)
      |> addOutline (solid  3 ) outlineColor
    ,
    ngon 3 8 
      |> filled color
      |> rotate (degrees -90 )
      |> move (41.73007712082262, 107)
      |> addOutline (solid  3 ) outlineColor
    ,
    ngon 3 8 
      |> filled color
      |> rotate (degrees -90 )
      |> move (-43.77120822622108, 107.00000000000001)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 83 13 0 
      |> filled color
      |> move (0, 104)
      |> addOutline (solid  3 ) outlineColor
    ,
    roundedRect 5 12 0 
      |> filled color
      |> move (-9.588688946015381, 120.56555269922879)
      |> addOutline (solid  0 ) color
    ,
    roundedRect 5 12 0 
      |> filled color
      |> move (29.023136246786677, 120.30848329048843)
      |> addOutline (solid  0 ) color
    ,
    roundedRect 6 11 0 
      |> filled color
      |> move (11, 120)
      |> addOutline (solid  0 ) color
    ,
    roundedRect 4 11 0 
      |> filled color
      |> move (-30.976863753213323, 120)
      |> addOutline (solid  0 ) color
    ,
    ngon 3 8 
      |> filled color
      |> rotate (degrees -90 )
      |> move (37.87403598971723, 105.35475578406174)
      |> addOutline (solid  0 ) color
    ,
    ngon 3 8 
      |> filled color
      |> rotate (degrees -90 )
      |> move (-40.4293059125964, 104.78920308483293)
      |> addOutline (solid  0 ) color
    ,
    ngon 3 6 
      |> filled color
      |> rotate (degrees -30 )
      |> move (34, 31)
      |> addOutline (solid  0 ) color
    ,
    ngon 3 6 
      |> filled color
      |> rotate (degrees -30 )
      |> move (-34.84318766066839, 31)
      |> addOutline (solid  0 ) color
  ]
  |> scale 0.5

pawn: Color -> Color -> Shape Msg
pawn color outlineColor = 
  group [  
  wedge 90 0.5
    |> filled color
    |> move (80, -220)
    |> addOutline (solid  5 ) outlineColor
    |> rotate (degrees 90)
  ,
  oval 100 100 
    |> filled color
    |> move (220, 215)
    |> addOutline (solid  5 ) outlineColor
  ,
  oval 50 50 
    |> filled color
    |> move (220, 285)
    |> addOutline (solid  5 ) outlineColor
  ,
  roundedRect 150 1 0 
    |> filled color
    |> move (218.89460154241652, 77.0694087403599)
    |> addOutline (solid  5 ) outlineColor
  ,
  roundedRect 30 25 0 
    |> filled color
    |> move (220, 165)
    |> addOutline (solid  5 ) color
  ,
  roundedRect 15 25 0 
    |> filled color
    |> move (220, 266)
    |> addOutline (solid  5 ) color
  ]
  |> scale 0.30

knight: Color -> Color -> Shape Msg
knight color outlineColor = 
  group [  
    roundedRect 50 50 0 
      |> filled color
      |> move (103.67609254498717, 6.272493573264775)
      |> addOutline (solid  5 ) color
    ,
    oval 140 70 
      |> filled color
      |> rotate (degrees -70 )
      |> move (148.09768637532136, 104.21593830334191)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 100 120 0 
      |> filled color
      |> move (138.38046272493565, 15.989717223650393)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 170 30 
      |> filled color
      |> rotate (degrees -120 )
      |> move (78.12339331619543, 32.85347043701798)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 70 50 0 
      |> filled color
      |> move (148.9203084832905, 65.39845758354755)
      |> addOutline (solid  5 ) color
    ,
    roundedRect 150 20 0 
      |> filled color
      |> rotate (degrees -120 )
      |> move (91.18251928020568, 34.03598971722363)
      |> addOutline (solid  5 ) color
    ,
    roundedRect 20 20 0 
      |> filled color
      |> move (90.61696658097694, -5.398457583547574)
      |> addOutline (solid  5 ) color
    ,
    roundedRect 150 30 3 
      |> filled color
      |> move (110.05141388174809, -28.997429305912604)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 170 80 
      |> filled color
      |> rotate (degrees -150 )
      |> move (66.76092544987156, 140.87403598971724)
      |> addOutline (solid  5 ) outlineColor
    ,
    ngon 3 15 
      |> filled color
      |> rotate (degrees -20 )
      |> move (86.45244215938311, 199.64010282776346)
      |> addOutline (solid  5 ) outlineColor
    ,
    ngon 3 15 
      |> filled color
      |> rotate (degrees -40 )
      |> move (123.11053984575844, 201.59383033419022)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 140 10 0 
      |> filled color
      |> move (111.439588688946, -16.503856041131137)
      |> addOutline (solid  5 ) color
    ,
    roundedRect 11 42 0 
      |> filled color
      |> rotate (degrees -40 )
      |> move (126.7095115681235, 144.5244215938303)
      |> addOutline (solid  5 ) color
    ,
    roundedRect 2 2 0 
      |> filled color
      |> rotate (degrees -150 )
      |> move (12.622107969151722, 116.50385604113104)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 20 1 0 
      |> filled color
      |> rotate (degrees -150 )
      |> move (18.43187660668385, 94.55012853470433)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 20 1 0 
      |> filled color
      |> rotate (degrees -150 )
      |> move (64.80719794344478, 160.35989717223646)
      |> addOutline (solid  5 ) outlineColor
  ]
  |> scale 0.30

bishop: Color -> Color -> Shape Msg
bishop color outlineColor = 
  group
  [  
    oval 35 35 
      |> filled color
      |> move (200, 395)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 100 130 
      |> filled color
      |> move (200, 310)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 100 60 50 
      |> filled color
      |> move (200, 236.14395886889454)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 95 1 0 
      |> filled color
      |> move (200, 236)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 5 50 0 
      |> filled outlineColor
      |> move (200, 320)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 50 5 0 
      |> filled outlineColor
      |> move (200, 320)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 90 10 5 
      |> filled color
      |> move (145, 200)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 90 10 5 
      |> filled color
      |> move (255, 200)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 55 10 0 
      |> filled color
      |> move (199.17737789203088, 264.32904884318776)
      |> addOutline (solid  5 ) color
  ]
  |> scale 0.3

king: Color -> Color -> Shape Msg
king color outlineColor = 
  group [  
    oval 40 70 
      |> filled color
      |> move (141, 225)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 100 70 
      |> filled color
      |> rotate (degrees -30 )
      |> move (94.43444730077121, 200)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 100 70 
      |> filled color
      |> rotate (degrees -150 )
      |> move (188.89460154241647, 200)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 120 70 30 
      |> filled color
      |> move (140, 155)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 115 1 0 
      |> filled color
      |> move (139.17737789203088, 163.89460154241644)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 115 1 0 
      |> filled color
      |> move (138.35475578406172, 145.02570694087402)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 10 60 0 
      |> filled color
      |> move (141.15681233933168, 286.68380462724934)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 40 10 0 
      |> filled color
      |> move (141, 290.2827763496144)
      |> addOutline (solid  5 ) outlineColor
  ]
  |> scale 0.35

queen: Color -> Color -> Shape Msg
queen color outlineColor = 
  group [  
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -170 )
      |> move (210.28277634961438, 265.8097686375321)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -10 )
      |> move (198.61182519280203, 265.2442159383033)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -20 )
      |> move (222.77634961439585, 264.42159383033413)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -180 )
      |> move (233.62467866323905, 264.1645244215938)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -30 )
      |> move (245.55269922879177, 262.21079691516695)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -160 )
      |> move (183.08483290488428, 264.9871465295631)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> move (170.025706940874, 263.033419023136)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -150 )
      |> move (155.8868894601542, 261.3881748071981)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 110 30 0 
      |> filled color
      |> move (200.28277634961447, 222.26221079691518)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 20 20 
      |> filled color
      |> move (204.19023136246804, 300.5141388174807)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> move (145.6041131105398, 258.04627249357304)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 1 50 0 
      |> filled color
      |> rotate (degrees -180 )
      |> move (255.01285347043702, 250.84832904884306)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 20 20 
      |> filled color
      |> move (235.2956298200516, 298)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 20 20 
      |> filled color
      |> move (170.3084832904886, 298)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 20 20 
      |> filled color
      |> move (142, 286)
      |> addOutline (solid  5 ) outlineColor
    ,
    oval 20 20 
      |> filled color
      |> move (260, 286)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 90 20 0 
      |> filled color
      |> move (201, 197)
      |> addOutline (solid  5 ) outlineColor
    ,
    roundedRect 120 30 1 
      |> filled color
      |> move (202, 172)
      |> addOutline (solid  5 ) outlineColor
  ]
  |> scale 0.45

chessSlide: SlideInput -> Shape Msg
chessSlide input =
  group
  [
    background5 input.time
    ,
    chessBoard
    |> move (450, -100)
    ,
    -- white
    rook white black
    |> move (170, 145)
    ,
    rook white black
    |> move (730, 145)
    ,
    pawn white black
    |> move (102.5, 42.5)
    ,
    pawn white black
    |> move (182.5, 42.5)
    ,
    pawn white black
    |> move (262.5, 42.5)
    ,
    pawn white black
    |> move (342.5, 42.5)
    ,
    pawn white black
    |> move (422.5, 42.5)
    ,
    pawn white black
    |> move (502.5, 42.5)
    ,
    pawn white black
    |> move (582.5, 42.5)
    ,
    pawn white black
    |> move (662.5, 42.5)
    ,
    knight white black
    |> move (222.5, 155)
    ,
    knight white black
    |> move (622.5, 155)
    ,
    bishop white black
    |> move (270, 90)
    ,
    bishop white black
    |> move (510, 90)
    ,
    queen white black
    |> move (400, 75)
    ,
    king white black
    |> move (360, 105)
    ,
    -- black
    rook black white
    |> move (170, -415)
    ,
    rook black white
    |> move (730, -415)
    ,
    pawn black white
    |> move (102.5, -357.5)
    ,
    pawn black white
    |> move (182.5, -357.5)
    ,
    pawn black white
    |> move (262.5, -357.5)
    ,
    pawn black white
    |> move (342.5, -357.5)
    ,
    pawn black white
    |> move (422.5, -357.5)
    ,
    pawn black white
    |> move (502.5, -357.5)
    ,
    pawn black white
    |> move (582.5, -357.5)
    ,
    pawn black white
    |> move (662.5, -357.5)
    ,
    knight black white
    |> move (222.5, -405)
    ,
    knight black white
    |> move (622.5, -405)
    ,
    bishop black white
    |> move (270, -470)
    ,
    bishop black white
    |> move (510, -470)
    ,
    queen black white
    |> move (400, -485)
    ,
    king black white
    |> move (360, -455)
    ,
    --Words/Text for chess slide--
    group [   
      text "Chess" 
        |> size 150 
        |> alignLeft 
        |> filled black
        |> move (-900, 300)
        |> addOutline (solid  1 ) black
      ,
      text "Stockfish and Deep Blue" 
        |> size 80 
        |> alignLeft 
        |> filled black
        |> move (-890, 180)
        |> addOutline (solid  1 ) black
      ,
      oval 10 10 
        |> filled black
        |> move (-880, 65)
        |> addOutline (solid  5 ) black
      ,
      text "Deep Blue (1997) - IBM created a bot that" 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, 50)
        |> addOutline (solid  1 ) black
      ,
      text "could analyze 200 million chess positions per" 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, -10)
        |> addOutline (solid  1 ) black
      ,
      text "second as compared to Kasparov's 3 per" 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, -70)
        |> addOutline (solid  1 ) black
      ,  
      text "second beat Gary Kasparov." 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, -130)
        |> addOutline (solid  1 ) black  
     ,
     oval 10 10 
        |> filled black
        |> move (-880, -200)
        |> addOutline (solid  5 ) black
      ,
      text "Currently, bots like Stockfish have beat all" 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, -215)
        |> addOutline (solid  1 ) black
      ,
      text "chess players and are the undespitued kings" 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, -275)
        |> addOutline (solid  1 ) black
      ,
      text "of the game." 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, -335)
        |> addOutline (solid  1 ) black            
    ]
    |> move (0,-50)

  ]
  |> transition [(bounceBack 1000 0), (moveAni 0 500)] input.transitionTime input.state

jeopardySlide: SlideInput -> Shape Msg
jeopardySlide input =
 group
 [
    background6 input.time
    ,
    group [
      text "Jeopardy" 
      |> size 150 
      |> alignLeft 
      |> filled black
      |> move (325, 300)
      |> addOutline (solid  1 ) black
    ,
    text "Watson" 
      |> size 80 
      |> alignLeft 
      |> filled black
      |> move (620, 170)
      |> addOutline (solid  1 ) black
    ,
    text "Watson (2011) - IBM's bot for Jeopardy" 
      |> size 50 
      |> alignLeft 
      |> filled black
      |> move (60, 50)
      |> addOutline (solid  1 ) black
     ,
     text "created in 2011, it beat Jeopardy champion" 
      |> size 50 
      |> alignLeft 
      |> filled black
      |> move (0, -10)
      |> addOutline (solid  1 ) black
     ,
     text "Ken Jennings and contained 200 million" 
      |> size 50 
      |> alignLeft 
      |> filled black
      |> move (50, -70)
      |> addOutline (solid  1 ) black
     ,
     text "pages of data while running over 6 million" 
      |> size 50 
      |> alignLeft 
      |> filled black
      |> move (10, -130)
      |> addOutline (solid  1 ) black
     ,
     text "logic rules." 
      |> size 50 
      |> alignLeft 
      |> filled black
      |> move (645, -190)
      |> addOutline (solid  1 ) black
    ]
    |> move (-50, -100)
    ,
    --Jeopary box--
    group [  
    roundedRect 750 450 0 
      |> filled blue
      |> move (-439.99999999999994, -66.63239074550127)
      |> addOutline (solid  5 ) black
    ,
    roundedRect 748 1 0 
      |> filled white
      |> move (-441.05398457583556, 15.42416452442159)
      |> addOutline (solid  5 ) black
    ,
    roundedRect 750 1 0 
      |> filled white
      |> move (-440.48843187660657, -139.4858611825193)
      |> addOutline (solid  5 ) black
    ,
    text "$200" 
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-760, 63)
      |> addOutline (solid  1 ) blue
    ,
    text "$200" 
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-255, 63)
      |> addOutline (solid  1 ) blue
    ,
    text "$200" 
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-509, 63)
      |> addOutline (solid  1 ) blue
    ,
    text "$400" 
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-765, -80)
      |> addOutline (solid  1 ) blue
    ,
    text "$400" 
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-255, -80)
      |> addOutline (solid  1 ) blue
    ,
    text "$400"
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-508.5089974293052, -80)
      |> addOutline (solid  1 ) blue
    ,
    text "$600" 
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-767.7892030848329, -234)
      |> addOutline (solid  1 ) blue
    ,
        text "$600" 
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-512, -234)
      |> addOutline (solid  1 ) blue
    ,
    roundedRect 1 448 0 
      |> filled white
      |> move (-570, -66)
      |> addOutline (solid  5 ) black
    ,
    roundedRect 1 447 0 
      |> filled white
      |> move (-312, -66)
      |> addOutline (solid  5 ) black
    ,
    text "$600"
      |> size 70 
      |> alignLeft 
      |> filled white
      |> move (-255, -234)
      |> addOutline (solid  1 ) blue
    ]
    |> move (-100,50)
 ]
 |> transition [(moveAni 1500 500)] input.transitionTime input.state
