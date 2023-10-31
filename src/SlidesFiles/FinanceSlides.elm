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
      |> animate [(fromTill (TimeData 1 1.1 RepeatFromStartWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
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
      |> animate [(fromTill (TimeData 0.5 0.7 RepeatFromStartWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
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
      |> animate [(fromTill (TimeData 1.8 2 RepeatFromStartWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
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
      |> animate [(fromTill (TimeData 1 1.2 RepeatFromStartWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
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
      |> animate [(fromTill (TimeData 1.6 1.7 RepeatFromStartWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
    ,
    roundedRect 5 5 0 
      |> filled green
      |> move (-220, 200)
      |> addOutline (solid  0 ) black
      |> animate [(fromTill (TimeData 2.3 2.4 RepeatFromStartWithPause) Nothing (fadeShapeToColor (RGBA 0 255 0 255) (RGBA 100 100 100 100)))] time
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

-- Dhiren's Slides & Shapes
financeTest1: SlideInput -> Shape Msg
financeTest1 input = 
  group [newYorkStockExchange, skyScraper, mcMasterShape]


mcMasterShape : Shape Msg
mcMasterShape = 
   group
  [  
      group
      [      
          group
          [          
              group
              [              
                roundedRect 1450 520 5 
                  |> filled darkGrey
                  |> move (-1.7494305239179084, -159.125284738041)
                  |> addOutline (solid  0 ) black
                ,
                  group
                  [                  
                    roundedRect 1450 70 0 
                      |> filled (rgb 20 50 20)
                      |> move (-0.9931662870159244, 108.09111617312077)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        ngon 3 40 
                          |> filled (rgb 20 50 20)
                          |> rotate (degrees -20 )
                          |> move (-684.5603644646924, 277.92255125284737)
                          |> addOutline (solid  0 ) black
                        ,
                        ngon 3 40 
                          |> filled (rgb 20 50 20)
                          |> rotate (degrees -30 )
                          |> move (-679.4305239179954, 272.55580865603645)
                          |> addOutline (solid  0 ) black
                      ]
                      |> scaleX 1.1
                      |> scaleY 1.08
                      |> move (34.98861047835999, -199.43507972665157)
                    ,
                      group
                      [                      
                        ngon 3 40 
                          |> filled (rgb 20 50 20)
                          |> rotate (degrees -20 )
                          |> move (-684.5603644646924, 277.92255125284737)
                          |> addOutline (solid  0 ) black
                        ,
                        ngon 3 40 
                          |> filled (rgb 20 50 20)
                          |> rotate (degrees -30 )
                          |> move (-679.4305239179954, 272.55580865603645)
                          |> addOutline (solid  0 ) black
                      ]
                      |> scaleX -1.1
                      |> scaleY 1.08
                      |> move (-35.9817767653758, -199.55353075170865)
                  ]
                ,
                roundedRect 1450 65 0 
                  |> filled (rgb 20 50 20)
                  |> move (0, -385.129840546697)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 400 400 0 
                  |> filled darkGrey
                  |> move (0, 120.87471526195898)
                  |> addOutline (solid  0 ) black
              ]
            ,
            roundedRect 340 400 0 
              |> filled grey
              |> move (0, -220)
              |> addOutline (solid  0 ) red
          ]
        ,
          group
          [          
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (280, -40)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (200, -40)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (120, -40)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (40, -40)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (320, 0)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (240, 0)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (160, 0)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (80, 0)
            ,
              group
              [              
                roundedRect 50 65 0 
                  |> filled darkGrey
                  |> move (-175, 348.10933940774487)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 40 10 0 
                  |> filled (rgb 50 50 50)
                  |> move (-175, 370)
                  |> addOutline (solid  0 ) black
              ]
              |> move (0, 0.8747152619590111)
          ]
          |> scaleX 1.082
          |> move (16.3, -20)
      ]
    ,
      group
      [      
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (0, 200)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (120, 200)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-120, 200)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (500, -40)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-260, -39.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (380, -39.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-500, -39.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-620, -39.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-380, -39.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (620, -39.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-500, -239.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-620, -239.125284738041)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-380, -238.25056947608198)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (-260, -238.25056947608198)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (380, -238.25056947608198)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (260, -238.25056947608198)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (500, -238.25056947608198)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (620, -238.25056947608198)
        ,
          group
          [          
            roundedRect 135 120 0 
              |> filled (rgb 20 20 40)
              |> move (0, -40)
              |> addOutline (solid  0 ) black
            ,
            oval 135 100 
              |> filled (rgb 20 20 40)
              |> move (0, 20)
              |> addOutline (solid  0 ) black
          ]
          |> scaleX 0.6
          |> scaleY 0.9
          |> move (260, -39.125284738041)
      ]
    ,
      group
      [      
        roundedRect 500 100 5 
          |> filled lightGrey
          |> addOutline (solid  5 ) black
        ,
        text "McMaster" 
          |> size 100 
          |> alignLeft 
          |> filled black
          |> move (-205.86788154897505, -32.10933940774487)
          |> addOutline (solid  0 ) blue
      ]
  ]

newYorkStockExchange : Shape Msg
newYorkStockExchange = 
  group
  [  
      group
      [      
          group
          [          
              group
              [              
                roundedRect 950 400 0 
                  |> filled (rgb 240 240 200)
                  |> move (-20, -90)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 950 400 0 
                  |> filled (rgb 240 240 200)
                  |> move (-20, 80)
                  |> addOutline (solid  0 ) black
                ,
                  List.foldr union (rect 0 0 |> ghost)
                  [                  
                    ngon 3 65 
                      |> filled (rgb 240 240 200)
                      |> rotate (degrees -30 )
                      |> move (-20, 260)
                      |> addOutline (solid  0 ) black
                    ,
                    ngon 3 65 
                      |> filled (rgb 240 240 200)
                      |> rotate (degrees -30 )
                      |> move (-20, 260)
                      |> addOutline (solid  0 ) black
                  ]
                  |> scaleX 7.56
                  |> move (131.8658641444541, 75.78589853826315)
                  |> addOutline (solid  10 ) (rgb 245 245 230)
                ,
                roundedRect 980 21 0 
                  |> filled (rgb 240 240 200)
                  |> move (-20, 290)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 850 21 0 
                  |> filled (rgb 240 240 200)
                  |> move (-23.21582115219259, 294.2132416165091)
                  |> addOutline (solid  0 ) black
              ]
              |> move (-1.8572656921753605, 0.9286328460877087)
            ,
              group
              [              
                roundedRect 800 55 5 
                  |> filled (rgb 245 245 225)
                  |> move (-20, 242)
                  |> addOutline (solid  5 ) (rgb 200 200 160)
                ,
                text "New York Stock Exchange" 
                  |> size 50 
                  |> alignLeft 
                  |> filled black
                  |> move (-292.9578675838345, 229.1315563198624)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (0, 3.9286328460877087)
            ,
              group
              [              
                  group
                  [                  
                      group
                      [                      
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (-260, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (340, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (460, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (100, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (220, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (-140, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (-20, 460)
                      ]
                      |> move (0, 120)
                    ,
                      group
                      [                      
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (-260, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (340, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (460, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (100, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (220, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (-140, 460)
                        ,
                          group
                          [                          
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -246)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -286)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-135, -206)
                              |> addOutline (solid  2 ) black
                            ,
                            roundedRect 27 40 0 
                              |> filled (rgb 30 30 50)
                              |> move (-108, -206)
                              |> addOutline (solid  2 ) black
                          ]
                          |> move (-20, 460)
                      ]
                  ]
                  |> move (0, -180)
                ,
                  group
                  [                  
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (399.0713671539123, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 30 30 50)
                      |> move (339.0713671539123, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (279.0713671539123, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (159.07136715391232, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 30 30 50)
                      |> move (219.07136715391232, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 30 30 50)
                      |> move (99.07136715391232, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (39.07136715391232, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (-80.92863284608768, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 30 30 50)
                      |> move (-20.92863284608768, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 30 30 50)
                      |> move (-140.92863284608768, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (-200.92863284608768, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (-320.9286328460877, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 30 30 50)
                      |> move (-260.9286328460877, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 30 30 50)
                      |> move (-380.9286328460877, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 60 100 0 
                      |> filled (rgb 240 240 200)
                      |> move (-440.9286328460877, -59.071367153912306)
                      |> addOutline (solid  0 ) black
                  ]
                  |> move (0, -180)
                ,
                  group
                  [                  
                      group
                      [                      
                        roundedRect 60 240 10 
                          |> filled (rgb 245 245 225)
                          |> move (-321.66, 95.92863284608771)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-342.5198452278589, 94.57007738607055)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-301.1612897678417, 94.14015477214106)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-315.0219948409285, 101.6380051590714)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-328.52156491831465, 102.0679277730009)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (360, 0)
                    ,
                      group
                      [                      
                        roundedRect 60 240 10 
                          |> filled (rgb 245 245 225)
                          |> move (-321.66, 95.92863284608771)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-342.5198452278589, 94.57007738607055)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-301.1612897678417, 94.14015477214106)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-315.0219948409285, 101.6380051590714)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-328.52156491831465, 102.0679277730009)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (240, 0)
                    ,
                      group
                      [                      
                        roundedRect 60 240 10 
                          |> filled (rgb 245 245 225)
                          |> move (-321.66, 95.92863284608771)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-342.5198452278589, 94.57007738607055)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-301.1612897678417, 94.14015477214106)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-315.0219948409285, 101.6380051590714)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-328.52156491831465, 102.0679277730009)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (120, 0)
                    ,
                      group
                      [                      
                        roundedRect 60 240 10 
                          |> filled (rgb 245 245 225)
                          |> move (-321.66, 95.92863284608771)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-342.5198452278589, 94.57007738607055)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-301.1612897678417, 94.14015477214106)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-315.0219948409285, 101.6380051590714)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-328.52156491831465, 102.0679277730009)
                          |> addOutline (solid  0 ) black
                      ]
                    ,
                      group
                      [                      
                        roundedRect 60 240 10 
                          |> filled (rgb 245 245 225)
                          |> move (-321.66, 95.92863284608771)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-342.5198452278589, 94.57007738607055)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-301.1612897678417, 94.14015477214106)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-315.0219948409285, 101.6380051590714)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-328.52156491831465, 102.0679277730009)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (480, 0.9286328460877087)
                    ,
                      group
                      [                      
                        roundedRect 60 240 10 
                          |> filled (rgb 245 245 225)
                          |> move (-321.66, 95.92863284608771)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-342.5198452278589, 94.57007738607055)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-301.1612897678417, 94.14015477214106)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-315.0219948409285, 101.6380051590714)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 7 220 0 
                          |> filled (rgb 200 200 160)
                          |> move (-328.52156491831465, 102.0679277730009)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (600, 1.8572656921754174)
                  ]
                ,
                  group
                  [                  
                      group
                      [                      
                        roundedRect 60 60 0 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 220)
                          |> addOutline (solid  0 ) black
                        ,
                        oval 60 60 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 250)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (560, -160)
                    ,
                      group
                      [                      
                        roundedRect 60 60 0 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 220)
                          |> addOutline (solid  0 ) black
                        ,
                        oval 60 60 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 250)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (440, -160)
                    ,
                      group
                      [                      
                        roundedRect 60 60 0 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 220)
                          |> addOutline (solid  0 ) black
                        ,
                        oval 60 60 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 250)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (320, -160)
                    ,
                      group
                      [                      
                        roundedRect 60 60 0 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 220)
                          |> addOutline (solid  0 ) black
                        ,
                        oval 60 60 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 250)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (200, -160)
                    ,
                      group
                      [                      
                        roundedRect 60 60 0 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 220)
                          |> addOutline (solid  0 ) black
                        ,
                        oval 60 60 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 250)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (-40, -160)
                    ,
                      group
                      [                      
                        roundedRect 60 60 0 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 220)
                          |> addOutline (solid  0 ) black
                        ,
                        oval 60 60 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 250)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (80, -160)
                    ,
                      group
                      [                      
                        roundedRect 60 60 0 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 220)
                          |> addOutline (solid  0 ) black
                        ,
                        oval 60 60 
                          |> filled (rgb 30 30 40)
                          |> move (-220, 250)
                          |> addOutline (solid  0 ) black
                      ]
                      |> move (-160, -160)
                  ]
                  |> move (0, -180)
              ]
              |> move (-0.9286328460876803, 0)
          ]
        ,
          group
          [          
            roundedRect 950 5 0 
              |> filled (rgb 250 250 230)
              |> move (-20, 156)
              |> addOutline (solid  0 ) black
            ,
            roundedRect 950 10 0 
              |> filled (rgb 220 220 180)
              |> move (-20, 149.5)
              |> addOutline (solid  0 ) black
          ]
          |> move (0, -180)
      ]
      |> move (0, 0.9286328460877087)
  ]

skyScraper : Shape Msg
skyScraper = 
  group
  [  
      group
      [      
          group
          [          
            roundedRect 300 40 0 
              |> filled (rgb 20 20 20)
              |> move (-110.37833190025808, -396.47463456577805)
              |> addOutline (solid  0 ) black
            ,
              group
              [              
                roundedRect 10 35 0 
                  |> filled grey
                  |> move (40.060189165949716, -399)
                  |> addOutline (solid  0 ) black
                ,
                roundedRect 10 35 0 
                  |> filled grey
                  |> move (-9.587274290628102, -399)
                  |> addOutline (solid  0 ) black
                ,
                  group
                  [                  
                    roundedRect 10 35 0 
                      |> filled grey
                      |> move (40.060189165949716, -399)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 10 35 0 
                      |> filled grey
                      |> move (-9.587274290628102, -399)
                      |> addOutline (solid  0 ) black
                  ]
                  |> move (-200, 0)
                ,
                  group
                  [                  
                    roundedRect 10 35 0 
                      |> filled grey
                      |> move (40.060189165949716, -399)
                      |> addOutline (solid  0 ) black
                    ,
                    roundedRect 10 35 0 
                      |> filled grey
                      |> move (-9.587274290628102, -399)
                      |> addOutline (solid  0 ) black
                  ]
                  |> move (-100, 0)
                ,
                roundedRect 10 35 0 
                  |> filled grey
                  |> move (-260, -399)
                  |> addOutline (solid  0 ) black
              ]
            ,
            roundedRect 310 10 0 
              |> filled grey
              |> move (-110, -377.0713671539123)
              |> addOutline (solid  0 ) black
          ]
        ,
          group
          [          
              group
              [              
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 460)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 220)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, -20)
              ]
              |> scaleX 0.5
              |> scaleY 0.5
              |> move (-40, 160)
            ,
              group
              [              
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 460)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 220)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, -20)
              ]
              |> scaleX 0.5
              |> scaleY 0.5
              |> move (-40, -200)
          ]
          |> scaleX 0.5
          |> scaleY 0.5
          |> move (-60, 180)
        ,
          group
          [          
              group
              [              
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 460)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 220)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, -20)
              ]
              |> scaleX 0.5
              |> scaleY 0.5
              |> move (-40, 160)
            ,
              group
              [              
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 460)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, 220)
                ,
                  group
                  [                  
                    roundedRect 40 245 0 
                      |> filled grey
                      |> move (-500, -230)
                      |> addOutline (solid  0 ) black
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (20, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (820, -180)
                    ,
                      group
                      [                      
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-320, -50)
                          |> addOutline (solid  0 ) black
                        ,
                        roundedRect 40 245 0 
                          |> filled grey
                          |> move (-120, -50)
                          |> addOutline (solid  0 ) black
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (200, 0)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                          |> move (0, 120)
                        ,
                          group
                          [                          
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -80)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-360, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-400, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-440, -140)
                              |> addOutline (solid  5 ) black
                            ,
                            roundedRect 40 60 0 
                              |> filled (rgb 60 60 100)
                              |> move (-480, -140)
                              |> addOutline (solid  5 ) black
                          ]
                      ]
                      |> move (420, -180)
                  ]
                  |> move (-220, -20)
              ]
              |> scaleX 0.5
              |> scaleY 0.5
              |> move (-40, -200)
          ]
          |> scaleX 0.5
          |> scaleY 0.5
          |> move (-60, -180)
      ]
  ]

chicagoSkyline : Shape Msg
chicagoSkyline = 
  curve (-95.64,4.7460) [Pull (-90.60,4.1707) (-85.57,3.5955),Pull (-85.71,5.4651) (-85.86,7.3348),Pull (-82.26,7.6224) (-78.66,7.9101),Pull (-78.95,8.9168) (-79.24,9.9235),Pull (-76.65,9.9235) (-74.06,9.9235),Pull (-73.63,11.217) (-73.20,12.512),Pull (-69.75,12.368) (-66.30,12.224),Pull (-66.30,10.930) (-66.30,9.6359),Pull (-63.13,9.2044) (-59.97,8.7730),Pull (-58.53,9.2044) (-57.09,9.6359),Pull (-57.09,11.217) (-57.09,12.8),Pull (-55.08,13.087) (-53.06,13.375),Pull (-52.78,14.813) (-52.49,16.251),Pull (-52.20,16.539) (-51.91,16.826),Pull (-51.77,21.573) (-51.63,26.319),Pull (-50.76,26.894) (-49.90,27.469),Pull (-49.76,28.332) (-49.61,29.195),Pull (-48.61,29.195) (-47.60,29.195),Pull (-47.31,28.476) (-47.02,27.757),Pull (-46.31,27.182) (-45.59,26.606),Pull (-45.30,21.573) (-45.01,16.539),Pull (-43.86,16.539) (-42.71,16.539),Pull (-42.85,9.3483) (-43.00,2.1573),Pull (-42.28,2.4449) (-41.56,2.7325),Pull (-41.42,3.4516) (-41.27,4.1707),Pull (-41.13,4.4584) (-40.98,4.7460),Pull (-40.84,5.1775) (-40.70,5.6089),Pull (-40.70,6.3280) (-40.70,7.0471),Pull (-39.83,6.9033) (-38.97,6.7595),Pull (-38.83,7.3348) (-38.68,7.9101),Pull (-37.82,7.9101) (-36.96,7.9101),Pull (-37.10,15.532) (-37.24,23.155),Pull (-36.53,23.298) (-35.81,23.442),Pull (-35.66,30.058) (-35.52,36.674),Pull (-35.09,36.961) (-34.66,37.249),Pull (-34.51,41.851) (-34.37,46.453),Pull (-34.08,46.597) (-33.79,46.741),Pull (-33.65,49.474) (-33.51,52.206),Pull (-33.36,50.193) (-33.22,48.179),Pull (-32.79,53.069) (-32.35,57.959),Pull (-32.21,55.083) (-32.07,52.206),Pull (-31.64,52.350) (-31.20,52.494),Pull (-31.35,50.624) (-31.49,48.755),Pull (-30.92,53.357) (-30.34,57.959),Pull (-30.20,54.076) (-30.05,50.193),Pull (-29.62,51.056) (-29.19,51.919),Pull (-28.90,49.474) (-28.62,47.029),Pull (-28.62,42.139) (-28.62,37.249),Pull (-27.18,36.817) (-25.74,36.386),Pull (-25.74,29.914) (-25.74,23.442),Pull (-25.16,23.586) (-24.59,23.730),Pull (-24.30,16.539) (-24.01,9.3483),Pull (-23.58,7.7662) (-23.15,6.1842),Pull (-21.42,6.0404) (-19.70,5.8966),Pull (-19.55,10.355) (-19.41,14.813),Pull (-15.24,15.101) (-11.07,15.388),Pull (-10.64,11.937) (-10.21,8.4853),Pull (-10.06,8.9168) (-9.923,9.3483),Pull (-9.779,11.793) (-9.635,14.238),Pull (-9.204,14.094) (-8.773,13.950),Pull (-9.060,18.552) (-9.348,23.155),Pull (-8.773,23.298) (-8.197,23.442),Pull (-7.622,23.874) (-7.047,24.305),Pull (-6.903,26.606) (-6.759,28.907),Pull (-6.615,26.750) (-6.471,24.593),Pull (-6.328,26.606) (-6.184,28.620),Pull (-6.040,26.750) (-5.896,24.880),Pull (-4.746,24.737) (-3.595,24.593),Pull (-3.307,26.894) (-3.020,29.195),Pull (-2.876,27.182) (-2.732,25.168),Pull (-2.732,27.038) (-2.732,28.907),Pull (-2.732,26.319) (-2.732,23.730),Pull (-1.438,23.298) (-0.143,22.867),Pull (-0.143,18.984) (-0.143,15.101),Pull (4.3146,15.532) (8.7730,15.964),Pull (9.0606,14.669) (9.3483,13.375),Pull (11.217,12.943) (13.087,12.512),Pull (13.375,11.505) (13.662,10.498),Pull (14.382,10.498) (15.101,10.498),Pull (15.244,16.683) (15.388,22.867),Pull (22.867,22.867) (30.346,22.867),Pull (30.489,19.415) (30.633,15.964),Pull (32.503,15.820) (34.373,15.676),Pull (34.660,15.101) (34.948,14.525),Pull (35.523,14.669) (36.098,14.813),Pull (36.530,12.943) (36.961,11.074),Pull (37.680,11.074) (38.4,11.074),Pull (38.112,18.121) (37.824,25.168),Pull (42.858,25.743) (47.892,26.319),Pull (48.611,26.462) (49.330,26.606),Pull (49.905,23.874) (50.480,21.141),Pull (51.919,20.853) (53.357,20.566),Pull (54.507,19.415) (55.658,18.265),Pull (59.829,18.552) (64,18.840),Pull (64,1.5820) (64,-15.67),Pull (-15.96,-15.96) (-95.92,-16.25),Pull (-95.92,-6.903) (-95.64,4.7460)]
  |> filled black
  |> scale 3

financeSlideAustin: SlideInput -> Shape Msg
financeSlideAustin input = 
  group [
    background2 input.time,
    chicagoSkyline
    |> move(-400, 200),
    wedge 100 0.5
    |> filled green
    |> rotate (pi/2)
    |> scaleX 3
    |> scaleY 0.5
    |> move(-450, 125),
    text (typeWriter "Chicago" 0.1 0.2 (TimeData 0 1000 Once) input.time)
    |> size 74
    |> filled black
    |> move (-585, 400),
    newYorkStockExchange
    |> scale 0.75
    |> move (400, -150)
  ]