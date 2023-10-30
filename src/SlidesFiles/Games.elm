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
--White ROOK1--
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

chessSlide: SlideInput -> Shape Msg
chessSlide input =
  group
  [
    background5 input.time
    ,
    chessBoard
    |> move (450, -100)
    ,
    rook white black
    |> scale 0.5
    |> move (170, 145)
    ,
    rook white black
    |> scale 0.5
    |> move (730, 145)
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
