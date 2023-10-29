module SlidesFiles.FinanceSlides exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

-- by default faces to the left
server: Float -> Shape Msg
server time = 
  group
  [  
    roundedRect 200 600 0 
      |> filled black
      |> move (-96.0680127523911, 81.14771519659939)
      |> addOutline (solid  5 ) grey
    ,
    roundedRect 135 75 0 
      |> filled black
      |> rotate (degrees -35 )
      |> move (-165.7385759829968, 310.8182784272051)
      |> addOutline (solid  0 ) red
    ,
    roundedRect 135 75 0 
      |> filled black
      |> rotate (degrees -35 )
      |> move (-72.33793836344327, -209.58554729011686)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 5 75 0 
      |> filled grey
      |> rotate (degrees -35 )
      |> move (-217.60892667375143, 350.98831030818286)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 5 75 0 
      |> filled grey
      |> rotate (degrees -35 )
      |> move (-19.543039319872534, 348.2040382571733)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 5 75 0 
      |> filled grey
      |> rotate (degrees -35 )
      |> move (-17.41764080765153, -247.63018065887346)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 200 600 0 
      |> filled black
      |> move (-140, 20)
      |> addOutline (solid  5 ) grey
    ,
    roundedRect 190 65 0 
      |> filled black
      |> move (-140, 281)
      |> addOutline (solid  5 ) darkGrey
    ,
    roundedRect 190 65 0 
      |> filled black
      |> move (-140, 201)
      |> addOutline (solid  5 ) darkGrey
    ,
    roundedRect 190 65 0 
      |> filled black
      |> move (-140, 121)
      |> addOutline (solid  5 ) darkGrey
    ,
    roundedRect 190 65 0 
      |> filled black
      |> move (-140, 41)
      |> addOutline (solid  5 ) darkGrey
    ,
    roundedRect 190 65 0 
      |> filled black
      |> move (-140, -41)
      |> addOutline (solid  5 ) darkGrey
    ,
    roundedRect 190 65 0 
      |> filled black
      |> move (-140, -121)
      |> addOutline (solid  5 ) darkGrey
    ,
    roundedRect 190 65 0 
      |> filled black
      |> move (-140, -201)
      |> addOutline (solid  5 ) darkGrey
    ,
    roundedRect 5 5 0 
      |> filled red
      |> move (-200, -200)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 0.5 0.8  RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, -200)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1 1.1 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled red
      |> move (-200, -120)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1.3 1.4 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, -120)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 0.5 0.7 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled red
      |> move (-200, -40)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1.2 1.1 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, -40)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1.8 2 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled red
      |> move (-200, 40)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1.2 1.3 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, 40)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1 1.2 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled red
      |> move (-200, 120)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1.7 1.8 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, 120)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1.6 1.7 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, 200)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 2.3 2.4 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled red
      |> move (-200, 200)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 2.8 3 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled red
      |> move (-200, 280)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 2.3 2.5 RepeatFromEndWithPause) Nothing (fadeShapeToColor (RGBA 255 0 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 135 5 0 
      |> filled lightBlue
      |> move (-120, -200)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 135 5 0 
      |> filled lightBlue
      |> move (-120, -120)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 135 5 0 
      |> filled lightBlue
      |> move (-120, -40)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 135 5 0 
      |> filled lightBlue
      |> move (-120, 40)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 135 5 0 
      |> filled lightBlue
      |> move (-120, 120)
      |> addOutline (solid  0 ) black 
    ,
    roundedRect 135 5 0 
      |> filled lightBlue
      |> move (-120, 200)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 135 5 0 
      |> filled lightBlue
      |> move (-120, 280)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, 280)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 1.4 1.5 RepeatFromStartWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
  ]

dollarSign: Float -> Color -> Shape Msg
dollarSign textSize color = 
  text "$"
  |> size textSize
  |> centered
  |> filled color

-- only works when start time is 0
dollarSignAnimation: Float -> Float -> TimeData -> Float -> Shape Msg
dollarSignAnimation x y timeData time =
  dollarSign 50 green
    |> animate [(fromTill (TimeData timeData.end (timeData.end + (timeData.end - timeData.start)) RepeatFromStartWithPause) Nothing (scaleInstant (0.5, 0.5))),
                (fromTill timeData (Just easeIn) (moveAni x 0)),
                (fromTill timeData (Just easeInAndOut) (moveAni 0 y))] time

financeIntro: SlideInput -> Shape Msg
financeIntro input =
  group
  [  
    background1 input.time
    ,
    dollarSignAnimation 650 100 (TimeData 0 5 RepeatLoop) input.time
    |> move (-600, -100)
    ,
    dollarSignAnimation 650 100 (TimeData 0 4 RepeatLoop) input.time
    |> move (-600, -150)
    ,
    dollarSignAnimation 650 100 (TimeData 0 3 RepeatLoop) input.time
    |> move (-600, -200)
    ,
    dollarSignAnimation 650 100 (TimeData 0 2.5 RepeatLoop) input.time
    |> move (-600, -250)
    ,
    dollarSignAnimation 650 100 (TimeData 0 3 RepeatLoop) input.time
    |> move (-600, -300)
    ,
    dollarSignAnimation 650 100 (TimeData 0 3.5 RepeatLoop) input.time
    |> move (-600, -350)
    ,
    dollarSignAnimation 650 100 (TimeData 0 4.5 RepeatLoop) input.time
    |> move (-600, -400)
    ,
    dollarSignAnimation 650 100 (TimeData 0 3.5 RepeatLoop) input.time
    |> move (-600, -450)
    ,
    server input.time
    |> mirrorX
    |> move (-750, -250)
    ,
    server input.time
    |> scale 0.75
    |> move (150, -300)
    ,
    text (typeWriter "Wall Street" 0.2 0.2 (TimeData 0 2 Once) input.time)
    |> size 144 
    |> underline
    |> centered
    |> filled black
    |> move (0, 250)
    |> addOutline (solid  1 ) black
  ]
  |> transition [(bounceBack 2000 500)] input.transitionTime input.state
