module SlidesFiles.Medical exposing (..)

import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

personalityBots: SlideInput -> Shape Msg
personalityBots input = 
  group
  [
    background3 input.time
    ,
    text (typeWriter "Categorizing Humankind" 0.2 0.2 (TimeData 0 1 Once) input.time)
    |> size 120 
      |> alignLeft
      |> filled black
      |> move (-900, 375)
      |> addOutline (solid  1 ) black
    ,
    spaceShip input.time 500 -250
    ,
    paper3Hour
    |> scale 0.95
    |> move (-1500, -125)
    |> animate [(fromTill (TimeData 7 0 Once) Nothing makeTransparentInstant),
                (fromTill (TimeData 7 8 Once) (Just easeInAndOut) (moveAni 1900 0)),
                (fromTill (TimeData 17 100000 Once) Nothing makeTransparentInstant),
                (fromTill (TimeData 15.5 16.5 Once) (Just easeOut) (moveAni -1900 -500))] input.time
    ,
    paper5Min
    |> scale 0.95
    |> move (1500, 625)
    |> animate [(fromTill (TimeData 15 0 Once) Nothing makeTransparentInstant),
                (fromTill (TimeData 15 16 Once) (Just easeInAndOut) (moveAni -1000 -750))] input.time
  ]
  |> transition [(moveAni 2000 -500)] input.transitionTime input.state

medicalSlide: SlideInput -> Shape Msg
medicalSlide input = 
  group 
  [
    background5 input.time
    ,
    group [   
      text "Medical/Personality Bots" 
        |> size 150 
        |> alignLeft 
        |> filled black
        |> move (-900, 320)
        |> addOutline (solid  1 ) black
      ,
      oval 10 10 
        |> filled black
        |> move (-880, 200)
        |> addOutline (solid  5 ) black
      ,
      text "Hospitals use algorithms to diagnose patients" 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, 185)
        |> addOutline (solid  1 ) black
      ,
        oval 10 10 
        |> filled black
        |> move (-880, 100)
        |> addOutline (solid  5 ) black
      ,
      text "The use of algorithms lead to fewer complications, fatality rates, costs, and mistakes."
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, 85)
        |> addOutline (solid  1 ) black
      ,
      oval 10 10 
        |> filled black
        |> move (-880, 0)
        |> addOutline (solid  5 ) black
      ,
      text "Algorithms have increased accessibility to medical technology" 
        |> size 50 
        |> alignLeft 
        |> filled black
        |> move (-850, -15)
        |> addOutline (solid  1 ) black     
    ]
    |> move (-30,-125)
    ,
    ambulence input.time
  ]
  |> transition [(moveAni 1000 0)] input.transitionTime input.state

-- have to call animate on ever shape so that clip will be more efficent (if animate where called on the group then clip would also have to be called on the group)
-- clip is way more efficent when calling on each shape in group instead of entire group
ambulence: Float -> Shape Msg
ambulence time =
  --ambulence--
  group [  
    roundedRect 100 120 20 
      |> filled black
      |> move (-84.83290488431884, 160.29562982005143)
      |> move (1150,0)
      |> addOutline (solid  5 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    oval 135 55 
      |> filled black
      |> rotate (degrees -160 )
      |> move (-70.41131105398452, 225.80976863753213)
      |> move (1150,0)
      |> addOutline (solid  5 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    roundedRect 90 155 0 
      |> filled black
      |> move (-0.7197943444730339, 183.3290488431877)
      |> move (1150,0)
      |> addOutline (solid  5 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    roundedRect 400 300 2 
      |> filled white
      |> move (317.99485861182484, 252)
      |> move (1150,0)
      |> addOutline (solid  5 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    oval 65 70 
      |> filled grey
      |> move (74, 340)
      |> move (1150,0)
      |> addOutline (solid  1 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0)),
                  (fromTill (TimeData 0 0.25 RepeatFromStart) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 255)))] time
      |> clipToScreen
    ,
    oval 100 100 
      |> filled white
      |> move (440, 100)
      |> move (1150,0)
      |> addOutline (solid  15 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    roundedRect 50 150 0 
      |> filled red
      |> move (310, 250)
      |> move (1150,0)
      |> addOutline (solid  5 ) red
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    roundedRect 150 50 0 
      |> filled red
      |> move (310, 250)
      |> move (1150,0)
      |> addOutline (solid  5 ) red
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    roundedRect 80 170 1 
      |> filled black
      |> rotate (degrees -40 )
      |> move (1.2339331619536758, 251.9151670951157)
      |> move (1150,0)
      |> addOutline (solid  5 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    roundedRect 90 240 1 
      |> filled black
      |> move (70, 222.77634961439588)
      |> move (1150,0)
      |> addOutline (solid  5 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
    ,
    oval 100 100 
      |> filled white
      |> move (-8, 100)
      |> move (1150,0)
      |> addOutline (solid  15 ) black
      |> animate [(fromTill (TimeData 0 30 RepeatFromStart) Nothing (moveAni -2750 0))] time
      |> clipToScreen
  ]
  |> move (0, -575)

-- calling clip and animate on every shape to improve performance
spaceShip: Float -> Float -> Float -> Shape Msg
spaceShip time x y = 
  group
  [  
    group -- fire
    [  
      oval 55 135 
        |> filled (rgb 178 34 34)
        |> move (-142.221041445271, -35.64293304994685)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0 0.1 RepeatFromStartWithPause) Nothing (hideShape (RGBA 178 34 34 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 69 0)
        |> move (-162.221041445271, -55.64293304994685)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.3 0.4 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 69 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 178 34 34)
        |> move (-182.221041445271, -75.64293304994685)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.2 0.3 RepeatFromStartWithPause) Nothing (hideShape (RGBA 178 34 34 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 178 34 34)
        |> move (-172.84803400637622, -32.986184909670555)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.1 0.2 RepeatFromStartWithPause) Nothing (hideShape (RGBA 178 34 34 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 69 0)
        |> move (-192.84803400637622, -52.986184909670555)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0 0.1 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 69 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 127 80)
        |> move (-203.34750265674816, -57.7470775770457)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.5 0.6 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 127 80 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 127 80)
        |> move (-220.07438894792773, -20.53134962805525)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.4 0.5 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 127 80 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 69 0)
        |> move (-184.0063761955367, -14.3039319872476)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0 0.1 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 69 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 178 34 34)
        |> move (-146.79064824654625, -49.39426142401699)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.1 0.2 RepeatFromStartWithPause) Nothing (hideShape (RGBA 178 34 34 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 140 0)
        |> move (-180.73326248671628, -94.81402763018065)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.15 0.25 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 140 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 178 34 34)
        |> move (-157.29011689691816, -103.50690754516471)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.05 0.15 RepeatFromStartWithPause) Nothing (hideShape (RGBA 178 34 34 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 140 0)
        |> move (-221.07332624867163, -119.08607863974493)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.25 0.35 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 140 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 140 0)
        |> move (-202.221041445271, -95.64293304994685)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.2 0.3 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 140 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 178 34 34)
        |> move (-247.3219978746015, -85.65356004250796)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.6 0.7 RepeatFromStartWithPause) Nothing (hideShape (RGBA 178 34 34 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 140 0)
        |> move (-216.99256110520724, -33.517534537725794)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.4 0.5 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 140 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 127 80)
        |> move (-182.0722635494155, -10.074388947927721)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0 0.1 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 127 80 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 127 80)
        |> move (-175.84484590860785, -133.538788522848)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.2 0.3 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 127 80 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 69 0)
        |> move (-130.5951115834219, -108.94792773645057)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.05 0.15 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 69 0 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 127 80)
        |> move (-150.76514346439959, -38.44845908607861)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0 0.1 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 127 80 255)))] time
        |> clipToScreen
      ,
      oval 55 135 
        |> filled (rgb 255 69 0)
        |> move (-242.0935175345377, -23.03931987247606)
        |> move (x+190, y-290)
        |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25)),
                  (fromTill (TimeData 0.15 0.25 RepeatFromStartWithPause) Nothing (hideShape (RGBA 255 69 0 255)))] time
        |> clipToScreen
    ]
    ,
    ngon 3 115 
      |> filled lightGrey
      |> rotate (degrees -30 )
      |> move (0, 220)
      |> move (x, y)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 115 65 75 
      |> filled darkGrey
      |> move (0, -222.21041445270987)
      |> move (x, y)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    oval 135 75 
      |> filled darkGrey
      |> move (0, -256.1317747077576)
      |> move (x, y)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 25 50 5 
      |> filled darkGrey
      |> move (-19.681190223166844, 92.79489904357068)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 200 400 25 
      |> filled grey
      |> move (0, 1.1477151965993642)
      |> move (x, y)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 20 50 5 
      |> filled darkGrey
      |> move (80, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 10 50 5 
      |> filled darkGrey
      |> move (60, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 20 50 5 
      |> filled darkGrey
      |> move (40, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 10 50 5 
      |> filled darkGrey
      |> move (20, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 20 50 5 
      |> filled darkGrey
      |> move (0, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 10 50 5 
      |> filled darkGrey
      |> move (-20, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 20 50 5 
      |> filled darkGrey
      |> move (-40, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 10 50 5 
      |> filled darkGrey
      |> move (-60, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 20 50 5 
      |> filled darkGrey
      |> move (-80, -160)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 25 50 5 
      |> filled darkGrey
      |> move (-40, 60)
      |> move (x, y)
      |> addOutline (solid  2 ) black
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
    ,
    roundedRect 25 50 5 
      |> filled darkGrey
      |> rotate (degrees -30 )
      |> move (x, y)
      |> move (-20, 241.14771519659934)
      |> addOutline (solid  2 ) white
      |> animate [(fromTill (TimeData 0 7.5 Once) (Just easeIn) (moveAni 150 1500)),
                  (fromTill (TimeData 0 0.05 RepeatLoop) (Just easeInAndOut) (rotateAni -0.25))] time
      |> clipToScreen
  ]

paper3Hour: Shape Msg
paper3Hour = 
  group
  [  
    roundedRect 600 800 0 
      |> filled white
      |> move (30, 30)
      |> addOutline (solid  2 ) black
    ,
    roundedRect 600 800 0 
      |> filled white
      |> move (20, 20)
      |> addOutline (solid  2 ) black
    ,
    roundedRect 600 800 0 
      |> filled white
      |> move (10, 10)
      |> addOutline (solid  2 ) black
    ,
    roundedRect 600 800 0 
      |> filled white
      |> addOutline (solid  2 ) black
    ,
    text "Completion Time: 3 Hours" 
      |> size 50 
      |> alignLeft 
      |> filled black
      |> move (-280, 340)
      |> addOutline (solid  0 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -360)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -340)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -320)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -280)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -300)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -260)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -240)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -220)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -200)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -160)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -180)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -140)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -120)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -100)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -80)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -40)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -60)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, -20)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 0)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 20)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 40)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 80)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 60)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 100)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 120)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 140)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 160)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 200)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 180)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 220)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 240)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 260)
      |> addOutline (solid  1 ) blue
    ,
    text "--------------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-260, 281.14771519659934)
      |> addOutline (solid  1 ) blue
    ,
    text "Designed by McGuire"
      |> size 20
      |> alignLeft
      |> filled black
      |> move (-240, 310)
  ]

paper5Min: Shape Msg
paper5Min = 
    group
  [  
    roundedRect 600 800 0 
      |> filled white
      |> addOutline (solid  2 ) black
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, -340)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, -280)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, -220)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, -160)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, -100)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, -40)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, 20)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, 80)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, 140)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, 200)
      |> addOutline (solid  0 ) blue
    ,
    text "---------------------------------------------------------" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-240, 260)
      |> addOutline (solid  0 ) blue
    ,
    text "Completion Time: 5 Minutes" 
      |> size 45 
      |> alignLeft 
      |> filled black
      |> move (-260, 340)
    ,
    text "Designed by Kahler"
      |> size 20
      |> alignLeft
      |> filled black
      |> move (-240, 310)
  ]
