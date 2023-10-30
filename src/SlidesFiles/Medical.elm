module SlidesFiles.Medical exposing (..)

import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

-- have to call animate on ever shape so that cut will be more efficent
-- cut is way more efficent when calling on each shape in group instead of entire group
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