module BackgroundSlides exposing (..)
import SlideUtilTypes exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import SlideUtilTypes exposing (Msg)

import Animations exposing (..)
import ShapeCreatorTypes exposing (Action(..))

firstBackground: Float -> Shape Msg
firstBackground time =
  group
  [  
    rect screen.x screen.y
    |> filled white
    |> addOutline (solid 2) black
    ,
    roundedRect 135 1200 0 
      |> filled (rgb 27 83 141)
      |> move (-900, 0)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 100 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni -25)] time
      |> rotate (degrees -30 )
      |> move (700, -214.59854014598525)
    ,
    ngon 6 150 
      |> filled (rgb 64 143 225)
      |> animate [(rotateAni -20)] time
      |> rotate (degrees -30 )
      |> move (700, 375)
    ,
    ngon 6 50 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni 30)] time
      |> rotate (degrees -30 )
      |> move (600, -375)
    ,
    ngon 6 250 
      |> filled black
      |> animate [(rotateAni 15)] time
      |> rotate (degrees -30 )
      |> move (960, 60)
  ]

secondBackground: Float -> Shape Msg
secondBackground time =
  group
  [  
      group
      [     
        rect screen.x screen.y
        |> filled white
        |> addOutline (solid 2) black
        , 
        oval 55 55 
          |> filled (rgb 64 143 225)
          |> scaleY 3
          |> move (780, 520)
          |> addOutline (solid  0 ) black
        ,
        roundedRect 135 200 0 
          |> filled (rgb 64 143 225)
          |> rotate (degrees -25 )
          |> move (911.4771519659937, 465.73857598299685)
          |> addOutline (solid  0 ) black
        ,
        oval 55 55 
          |> filled (rgb 64 143 225)
          |> scaleX 3
          |> scaleY 3
          |> move (960, 420)
          |> addOutline (solid  0 ) red
        ,
        oval 55 55 
          |> filled (rgb 64 143 225)
          |> scaleX 3
          |> scaleY 3
          |> move (840, 480)
          |> addOutline (solid  0 ) red
      ]
    ,
    ngon 6 100 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni -30)] time
      |> rotate (degrees -90 )
      |> move (-580, -420)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 250 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni 15)] time
      |> rotate (degrees -90 )
      |> move (-960, -340)
      |> addOutline (solid  0 ) black
  ]

thirdBackground: Float -> Shape Msg
thirdBackground time =
  group
  [  
    rect screen.x screen.y
      |> filled white
      |> addOutline (solid 2) black
    ,
    ngon 6 100 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni 30)] time
      |> move (-600, -440)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 135 1080 0 
      |> filled blue
      |> move (900, 0)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 250 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni -15)] time
      |> move (-980, -380)
      |> addOutline (solid  0 ) black
  ]

fourthBackground: Float -> Shape Msg
fourthBackground time =
  group
  [  
    rect screen.x screen.y
      |> filled white
      |> addOutline (solid 2) black
    ,
    group
    [      
      oval 55 55 
        |> filled (rgb 221 213 32)
        |> scaleX 4
        |> scaleY 3
        |> move (-925.0797024442084, -498.36344314558977)
        |> addOutline (solid  0 ) black
      ,
      oval 55 55 
        |> filled (rgb 221 213 32)
        |> scaleX 2
        |> scaleY 6
        |> move (-848.5228480340064, -610.3294367693942)
        |> addOutline (solid  0 ) black
    ]
    |> move (0, -20)
    ,
    ngon 6 50 
      |> filled black
      |> animate [(rotateAni -35)] time
      |> rotate (degrees -30 )
      |> move (920, -280)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 100
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni 30)] time
      |> rotate (degrees -30 )
      |> move (860, -440)
      |> addOutline (solid  0 ) black
  ]
