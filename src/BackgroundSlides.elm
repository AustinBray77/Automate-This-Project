module BackgroundSlides exposing (..)
import SlideUtilTypes exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import SlideUtilTypes exposing (Msg)

import Animations exposing (..)
import ShapeCreatorTypes exposing (Action(..))

-- red: 209 80 67
-- blue: 64 143 225
-- yellow: 221 213 32

--!!!! calling clip on every shape in the group is more efficent that calling group on the group its self
--!!!! so when ever cliping do it to each shape NOT the group of shapes

background1: Float -> Shape Msg
background1 time =
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
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
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
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
  ]

background2: Float -> Shape Msg
background2 time =
  group
  [  
    rect screen.x screen.y
      |> filled white
      |> addOutline (solid 2) black
    , 
    group
    [     
      oval 55 55 
        |> filled (rgb 64 143 225)
        |> scaleY 3
        |> move (780, 520)
        |> addOutline (solid  0 ) black
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
      ,
      roundedRect 135 200 0 
        |> filled (rgb 64 143 225)
        |> rotate (degrees -25 )
        |> move (911.4771519659937, 465.73857598299685)
        |> addOutline (solid  0 ) black
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
      ,
      oval 55 55 
        |> filled (rgb 64 143 225)
        |> scaleX 3
        |> scaleY 3
        |> move (960, 420)
        |> addOutline (solid  0 ) red
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
              ,
      oval 55 55 
        |> filled (rgb 64 143 225)
        |> scaleX 3
        |> scaleY 3
        |> move (840, 480)
        |> addOutline (solid  0 ) red
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
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
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
  ]

background3: Float -> Shape Msg
background3 time =
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
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
  ]

background4: Float -> Shape Msg
background4 time =
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
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
      ,
      oval 55 55 
        |> filled (rgb 221 213 32)
        |> scaleX 2
        |> scaleY 6
        |> move (-848.5228480340064, -610.3294367693942)
        |> addOutline (solid  0 ) black
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
    ]
    |> move (0, -20)
    ,
    ngon 6 50 
      |> filled black
      |> animate [(rotateAni -35)] time
      |> rotate (degrees -30 )
      |> move (920, -280)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    ngon 6 100
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni 30)] time
      |> rotate (degrees -30 )
      |> move (860, -440)
      |> addOutline (solid  0 ) black
  ]

background5: Float -> Shape Msg
background5 time =
  group
  [  
    rect screen.x screen.y
      |> filled white
      |> addOutline (solid 2) black
    ,
    ngon 6 100 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni -30)] time
      |> rotate (degrees -30 )
      |> move (320, 520)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    ngon 6 150 
      |> filled black
      |> animate [(rotateAni 25)] time
      |> rotate (degrees -30 )
      |> move (620, 440)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    ngon 6 100 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni -30)] time
      |> rotate (degrees -30 )
      |> move (880, 520)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    group
    [      
      oval 150 150 
        |> filled (rgb 64 143 225)
        |> move (-906.89, 543.4431455897981)
        |> addOutline (solid  0 ) black
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
      ,
      oval 150 150 
        |> filled (rgb 64 143 225)
        |> scaleX 2
        |> scaleY 0.5
        |> move (-1003.78, 495.41)
        |> addOutline (solid  0 ) black
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
    ]
  ]

background6: Float -> Shape Msg
background6 time = 
  group
  [  
    rect screen.x screen.y
      |> filled white
      |> addOutline (solid 2) black
    ,
    ngon 6 100 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni -30)] time
      |> rotate (degrees -30 )
      |> move (-440, -420)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    ngon 6 150 
      |> filled black
      |> animate [(rotateAni 25)] time
      |> rotate (degrees -30 )
      |> move (-700, -580)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    ngon 6 100 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni -30)] time
      |> rotate (degrees -30 )
      |> move (-960, -420)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    group
    [      
      oval 150 150 
        |> filled (rgb 64 143 225)
        |> move (-906.89, 543.4431455897981)
        |> addOutline (solid  0 ) black
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
      ,
      oval 150 150 
        |> filled (rgb 64 143 225)
        |> scaleX 2
        |> scaleY 0.5
        |> move (-1003.78, 495.41)
        |> addOutline (solid  0 ) black
        |> clip ( -- cliping as it goes outside of the slide
          rect screen.x screen.y
          |> filled blank)
    ]
  ]

background7: Float -> Shape Msg
background7 time = 
  group
  [  
    rect screen.x screen.y
      |> filled white
      |> addOutline (solid 2) black
    ,
    oval 55 55 
      |> filled black
      |> scaleX 5
      |> scaleY 5
      |> move (980, 60)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 50 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni -35)] time
      |> rotate (degrees -30 )
      |> move (-740, 160)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 100 
      |> filled (rgb 64 143 225)
      |> animate [(rotateAni -30)] time
      |> rotate (degrees -30 )
      |> move (-860, -20)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 200 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni 20)] time
      |> rotate (degrees -30 )
      |> move (-1020, 260)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    oval 55 55 
      |> filled black
      |> animate [fromTill (TimeData 0 3 RepeatLoop) (Just easeInAndOut) (scaleAni (1.1,1.1))] time
      |> scaleX 2
      |> scaleY 2
      |> move (883.5281615302869, 57.02444208289053)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    oval 55 55 
      |> filled black
      |> animate [fromTill (TimeData 2 4 RepeatLoop) (Just easeInAndOut) (scaleAni (1.1,1.1))] time
      |> scaleX 5
      |> scaleY 5
      |> move (957.7045696068013, 112.62486716259298)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
    ,
    oval 55 55 
      |> filled black
      |> animate [fromTill (TimeData 1 5 RepeatLoop) (Just easeInAndOut) (scaleAni (1.1,1.1))] time
      |> scaleX 5
      |> scaleY 5
      |> move (984.5908607863975, 134.9202975557917)
      |> addOutline (solid  0 ) black
      |> clip ( -- cliping as it goes outside of the slide
        rect screen.x screen.y
        |> filled blank)
  ]
