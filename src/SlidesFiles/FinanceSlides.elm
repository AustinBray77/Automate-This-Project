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
  |> bold
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
    |> move (-600, -500)
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
    |> alignLeft
    |> filled black
    |> move (-300, 250)
    |> addOutline (solid  1 ) black
  ]
  |> transition [(bounceBack 2000 500)] input.transitionTime input.state

-- Dhiren's Slides & Shapes
financeSlideDhiren1 : SlideInput -> Shape Msg
financeSlideDhiren1 input =
  group 
  [
    background6 input.time, 
    skyScraper
    |> move(-600, 300)
    |> scale 1  
    ,
    newYorkStockExchange
    |> move (-580,50)
    |> scale 0.5
    ,
    mcMasterShape
    |> move (1150, -650)
    |> scale 0.5
    ,
    peopleAnimation input.time
    ,
    wallStreetBanner
    |> move (0, 200)
    |> scale 0.6
    ,
    signOnBonus,
    startingSalary
  ]
  |> transition [(moveAni 1000 2000)] input.transitionTime input.state

peopleAnimation : Float -> Shape Msg
peopleAnimation time = 
  group
  [
    graduate 
    |> scale (0.5)
    |> move (550, -450)
    
    {- ,
    graduate
    ,
    graduate -}
  ]

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
    ,
    group
    [  
        group
        [      
          roundedRect 240 250 0 
            |> filled (rgb 20 20 40)
            |> move (0, -260)
            |> addOutline (solid  0 ) black
          ,
          oval 240 150 
            |> filled (rgb 20 20 40)
            |> move (0, -140)
            |> addOutline (solid  0 ) black
        ]
        |> move (0, -35)
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

person : Shape Msg
person = 
  group
  [  
      group
      [      
        oval 140 140 
          |> filled white
          |> move (-60, 180)
          |> addOutline (solid  10 ) black
        ,
          List.foldr union (rect 0 0 |> ghost)
          [          
            roundedRect 300 80 0 
              |> filled white
              |> move (-60, -80)
              |> addOutline (solid  10 ) black
            ,
            roundedRect 300 200 40 
              |> filled white
              |> move (-60, -20)
              |> addOutline (solid  10 ) black
          ]
          |> addOutline (solid  20 ) black
      ]
  ]

graduate : Shape Msg
graduate =   group
  [  
    group
    [      
      oval 140 140 
        |> filled white
        |> move (-60, 180)
        |> addOutline (solid  10 ) black
      ,
        List.foldr union (rect 0 0 |> ghost)
        [          
          roundedRect 300 80 0 
            |> filled white
            |> move (-60, -80)
            |> addOutline (solid  10 ) black
          ,
          roundedRect 300 200 40 
            |> filled white
            |> move (-60, -20)
            |> addOutline (solid  10 ) black
        ]
        |> addOutline (solid  20 ) black
    ]
    ,
      group
      [      
        oval 135 55 
          |> filled black
          |> rotate (degrees -10 )
          |> move (-35.53488372093023, 240)
          |> addOutline (solid  5 ) black
        ,
          group
          [          
            roundedRect 135 65 0 
              |> filled (rgb 50 50 60)
              |> rotate (degrees -20 )
              |> move (-11.069767441860463, 338.3255813953489)
              |> addOutline (solid  5 ) black
          ]
          |> scaleX 1.75
          |> move (0, -60)
      ]
  ]

startingSalary : Shape Msg
startingSalary = 
  group
  [  
      group
      [      
          group
          [          
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-0.8372093023255616, 162.88372093023264)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (1.4883720930232585, 325.95348837209315)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-10.60465116279073, -162.4186046511628)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-8.27906976744191, 0.6511627906976543)
          ]
          |> move (-59.53488372093017, 11.906976744186053)
        ,
          group
          [          
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-0.8372093023255616, 162.88372093023264)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (1.4883720930232585, 325.95348837209315)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-10.60465116279073, -162.4186046511628)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-8.27906976744191, 0.6511627906976543)
          ]
          |> move (57.209302325581405, 9.581395348837209)
        ,
          group
          [          
            text "Starting" 
              |> size 70 
              |> alignLeft 
              |> filled black
              |> move (-560.8837209302326, -159.62790697674419)
              |> addOutline (solid  0 ) blue
            ,
            text "Salary" 
              |> size 70 
              |> alignLeft 
              |> filled black
              |> move (-537.0697674418602, -216.18604651162795)
              |> addOutline (solid  0 ) blue
          ]
          |> move (-28.279069767441854, 343.81395348837214)
      ]
  ]

signOnBonus : Shape Msg
signOnBonus = 
  group
  [  
      group
      [      
          group
          [          
            text "Bonus" 
              |> size 70 
              |> alignLeft 
              |> filled black
              |> move (-169.44186046511624, -226.60465116279073)
              |> addOutline (solid  0 ) blue
            ,
            text "Sign-On" 
              |> size 70 
              |> alignLeft 
              |> filled black
              |> move (-203.67441860465124, -161.11627906976742)
              |> addOutline (solid  0 ) blue
          ]
          |> move (26.790697674418627, 343)
        ,
          group
          [          
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-0.8372093023255616, 162.88372093023264)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (1.4883720930232585, 325.95348837209315)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-10.60465116279073, -162.4186046511628)
            ,
              group
              [              
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 1.5
                  |> scaleY 1.5
                  |> move (-500.69767441860444, -313.7674418604652)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-507.67441860465095, -243.34883720930236)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-447.11627906976724, -270.60465116279073)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-535.9534883720928, -341.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> move (-535.5813953488372, -293.5813953488372)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-514.4651162790695, -323.0697674418605)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-517.9069767441858, -372.65116279069775)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-445.81395348837185, -313.95348837209303)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (-480.04651162790674, -383.9069767441861)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.5
                  |> scaleY 0.5
                  |> move (-539.7674418604649, -385.58139534883725)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-446.83720930232533, -371.5348837209302)
                  |> addOutline (solid  0 ) blue
                ,
                text "$" 
                  |> size 70 
                  |> alignLeft 
                  |> filled green
                  |> scaleX 0.4
                  |> scaleY 0.4
                  |> move (-459.58139534883696, -339.62790697674427)
                  |> addOutline (solid  0 ) blue
              ]
              |> move (-8.27906976744191, 0.6511627906976543)
          ]
          |> move (424.83720930232585, 2.1395348837209287)
      ]
  ]

wallStreetBanner : Shape Msg
wallStreetBanner = 
  group
  [  
      group
      [      
        roundedRect 650 125 10 
          |> filled white
          |> move (-289.5348837209301, 422.046511627907)
          |> addOutline (solid  10 ) black
        ,
        text "Wall Street" 
          |> size 120 
          |> alignLeft 
          |> filled black
          |> move (-559.3953488372093, 385.1162790697674)
          |> addOutline (solid  0 ) blue
      ]
  ]

whiteCover : Shape Msg
whiteCover = 
  group
  [  
    roundedRect 800 500 0 
      |> filled white
      |> move (-459.2093023255816, -432.27906976744185)
      |> addOutline (solid  0 ) red
  ]

stockLine : Shape Msg
stockLine = 
  curve (-64,44.617) [Pull (-55.58,38.948) (-47.17,33.28),Pull (-42.05,36.571) (-36.93,39.862),Pull (-29.25,27.062) (-21.57,14.262),Pull (-19.74,15.177) (-17.92,16.091),Pull (-12.61,-4.022) (-7.314,-24.13),Pull (-5.302,-20.29) (-3.291,-16.45),Pull (1.28,-25.23) (5.8514,-34.01),Pull (10.605,-30.72) (15.36,-27.42),Pull (21.759,-30.53) (28.16,-33.64),Pull (39.314,-31.45) (50.468,-29.25),Pull (55.04,-30.72) (59.611,-32.18),Pull (73.508,-26.14) (87.405,-20.11)]
     |> outlined (solid 2) red

stockBackground : Shape Msg
stockBackground =
  group
  [  
      group
      [      
        roundedRect 700 600 5 
          |> filled white
          |> move (-500, 200)
          |> addOutline (solid  10 ) black
        ,
          group
          [          
            roundedRect 10 600 0 
              |> filled green
              |> rotate (degrees -90 )
              |> move (-500, -55)
              |> addOutline (solid  0 ) black
            ,
            roundedRect 10 520 0 
              |> filled green
              |> move (-795, 200)
              |> addOutline (solid  0 ) black
          ]
      ]
  ]

sadThought : Shape Msg
sadThought = 
  group
  [  
      group
      [      
          List.foldr union (rect 0 0 |> ghost)
          [          
            oval 300 150 
              |> filled white
              |> move (107.86046511627914, -293.3023255813955)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (-14.372093023255772, -283.06976744186056)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (62.00000000000004, -226.04651162790708)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (110.27906976744188, -216.46511627906986)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (160.04651162790702, -233.67441860465127)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (211.30232558139537, -255.34883720930242)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (252.13953488372096, -291.9069767441862)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (237.90697674418612, -324.0000000000001)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (183.4883720930233, -345.67441860465124)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (114.18604651162795, -364.3720930232559)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (50.27906976744191, -350.88372093023264)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (-5.7209302325581195, -325.0232558139536)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (18.186046511627953, -246.04651162790705)
              |> addOutline (solid  10 ) black
          ]
          |> move (-20, 0)
          |> addOutline (solid  14 ) black
        ,
          group
          [          
              group
              [              
                oval 15 15 
                  |> filled green
                  |> move (160, -260)
                  |> addOutline (solid  5 ) black
                ,
                oval 15 15 
                  |> filled black
                  |> move (220, -260)
                  |> addOutline (solid  5 ) black
                ,
                  group
                  [                  
                    oval 100 55 
                      |> filled white
                      |> move (180, 120)
                      |> addOutline (solid  10 ) black
                    ,
                    roundedRect 120 40 0 
                      |> filled white
                      |> move (180, 105.11627906976744)
                      |> addOutline (solid  0 ) black
                    ,
                    ngon 3 20 
                      |> filled white
                      |> move (130.18604651162795, 115.90697674418604)
                      |> addOutline (solid  0 ) white
                    ,
                    ngon 3 20 
                      |> filled white
                      |> rotate (degrees -180 )
                      |> move (238, 119.53488372093024)
                      |> addOutline (solid  0 ) white
                  ]
                  |> scaleX 0.8
                  |> scaleY 0.8
                  |> move (46.13953488372093, -422.6976744186049)
              ]
              |> move (-21.906976744186068, 2.02325581395354)
            ,
            text "$$$" 
              |> size 100 
              |> alignLeft 
              |> filled black
              |> move (-38.465116279069576, -318.8837209302325)
              |> addOutline (solid  0 ) blue
          ]
        ,
        oval 100 100 
          |> filled white
          |> move (-161.72093023255792, -308.37209302325596)
          |> addOutline (solid  7 ) black
        ,
        oval 60 60 
          |> filled white
          |> move (-365.441860465116, -366.23255813953494)
          |> addOutline (solid  7 ) black
        ,
        oval 80 80 
          |> filled white
          |> move (-271.0232558139533, -341.7674418604652)
          |> addOutline (solid  7 ) black
      ]
  ]

facebookLogo : Shape Msg
facebookLogo =
  curve (-30.40,-33.95) [Pull (-36.31,-34.07) (-42.23,-34.18),Pull (-42.11,-16.56) (-41.99,1.0646),Pull (-46.01,1.1829) (-50.04,1.3012),Pull (-50.15,6.5064) (-50.27,11.711),Pull (-46.13,11.829) (-41.99,11.948),Pull (-41.99,15.970) (-41.99,19.992),Pull (-42.43,40.473) (-16.68,36.554),Pull (-16.56,30.876) (-16.44,25.197),Pull (-20.34,24.961) (-24.25,24.724),Pull (-29.49,23.585) (-29.92,19.046),Pull (-30.16,15.733) (-30.40,12.421),Pull (-23.42,12.066) (-16.44,11.711),Pull (-17.27,6.5064) (-18.09,0),Pull (-30.40,0.2365) (-30.87,0)]
    |> filled white

facebookBackground : Shape Msg
facebookBackground = 
  group
  [  
    roundedRect 100 100 20 
      |> filled blue
      |> move (554.3720930232558, -450.13953488372084)
      |> addOutline (solid  0 ) black
  ]

emptyThought : Shape Msg
emptyThought = 
  group
  [  
      group
      [      
          List.foldr union (rect 0 0 |> ghost)
          [          
            oval 300 150 
              |> filled white
              |> move (107.86046511627914, -293.3023255813955)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (-14.372093023255772, -283.06976744186056)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (62.00000000000004, -226.04651162790708)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (110.27906976744188, -216.46511627906986)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (160.04651162790702, -233.67441860465127)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (211.30232558139537, -255.34883720930242)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (252.13953488372096, -291.9069767441862)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (237.90697674418612, -324.0000000000001)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (183.4883720930233, -345.67441860465124)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (114.18604651162795, -364.3720930232559)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (50.27906976744191, -350.88372093023264)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (-5.7209302325581195, -325.0232558139536)
              |> addOutline (solid  10 ) black
            ,
            oval 100 60 
              |> filled white
              |> move (18.186046511627953, -246.04651162790705)
              |> addOutline (solid  10 ) black
          ]
          |> move (192.83720930232562, 526.8837209302325)
          |> addOutline (solid  14 ) black
        ,
        oval 60 60 
          |> filled white
          |> move (-12.697674418604237, 99.62790697674414)
          |> addOutline (solid  7 ) black
        ,
        oval 80 80 
          |> filled white
          |> move (77.25581395348851, 144.93023255813952)
          |> addOutline (solid  7 ) black
      ]
  ]

groupThoughts : Shape Msg
groupThoughts =
  group
  [  
      List.foldr union (rect 0 0 |> ghost)
      [      
        oval 300 150 
          |> filled white
          |> move (107.86046511627914, -293.3023255813955)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-14.372093023255772, -283.06976744186056)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (62.00000000000004, -226.04651162790708)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (110.27906976744188, -216.46511627906986)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (160.04651162790702, -233.67441860465127)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (211.30232558139537, -255.34883720930242)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (252.13953488372096, -291.9069767441862)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (237.90697674418612, -324.0000000000001)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (183.4883720930233, -345.67441860465124)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (114.18604651162795, -364.3720930232559)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (50.27906976744191, -350.88372093023264)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-5.7209302325581195, -325.0232558139536)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (18.186046511627953, -246.04651162790705)
          |> addOutline (solid  10 ) black
      ]
      |> scaleX 1.5
      |> scaleY 1.5
      |> move (303.6279069767445, 338.5116279069766)
      |> addOutline (solid  14 ) black
    ,
      List.foldr union (rect 0 0 |> ghost)
      [      
        oval 300 150 
          |> filled white
          |> move (107.86046511627914, -293.3023255813955)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-14.372093023255772, -283.06976744186056)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (62.00000000000004, -226.04651162790708)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (110.27906976744188, -216.46511627906986)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (160.04651162790702, -233.67441860465127)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (211.30232558139537, -255.34883720930242)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (252.13953488372096, -291.9069767441862)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (237.90697674418612, -324.0000000000001)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (183.4883720930233, -345.67441860465124)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (114.18604651162795, -364.3720930232559)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (50.27906976744191, -350.88372093023264)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-5.7209302325581195, -325.0232558139536)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (18.186046511627953, -246.04651162790705)
          |> addOutline (solid  10 ) black
      ]
      |> scaleX 1.5
      |> scaleY 1.5
      |> move (347.4418604651166, 776.744186046511)
      |> addOutline (solid  14 ) black
    ,
      List.foldr union (rect 0 0 |> ghost)
      [      
        oval 300 150 
          |> filled white
          |> move (107.86046511627914, -293.3023255813955)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-14.372093023255772, -283.06976744186056)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (62.00000000000004, -226.04651162790708)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (110.27906976744188, -216.46511627906986)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (160.04651162790702, -233.67441860465127)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (211.30232558139537, -255.34883720930242)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (252.13953488372096, -291.9069767441862)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (237.90697674418612, -324.0000000000001)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (183.4883720930233, -345.67441860465124)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (114.18604651162795, -364.3720930232559)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (50.27906976744191, -350.88372093023264)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-5.7209302325581195, -325.0232558139536)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (18.186046511627953, -246.04651162790705)
          |> addOutline (solid  10 ) black
      ]
      |> scaleX 1.5
      |> scaleY 1.5
      |> move (-610.4186046511624, 786.3255813953488)
      |> addOutline (solid  14 ) black
    ,
      List.foldr union (rect 0 0 |> ghost)
      [      
        oval 300 150 
          |> filled white
          |> move (107.86046511627914, -293.3023255813955)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-14.372093023255772, -283.06976744186056)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (62.00000000000004, -226.04651162790708)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (110.27906976744188, -216.46511627906986)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (160.04651162790702, -233.67441860465127)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (211.30232558139537, -255.34883720930242)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (252.13953488372096, -291.9069767441862)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (237.90697674418612, -324.0000000000001)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (183.4883720930233, -345.67441860465124)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (114.18604651162795, -364.3720930232559)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (50.27906976744191, -350.88372093023264)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (-5.7209302325581195, -325.0232558139536)
          |> addOutline (solid  10 ) black
        ,
        oval 100 60 
          |> filled white
          |> move (18.186046511627953, -246.04651162790705)
          |> addOutline (solid  10 ) black
      ]
      |> scaleX 1.5
      |> scaleY 1.5
      |> move (-116.74418604651106, 587.9069767441855)
      |> addOutline (solid  14 ) black
    ,
    oval 60 60 
      |> filled white
      |> scaleX 1.5
      |> scaleY 1.5
      |> move (-426.465116279069, -80.46511627906979)
      |> addOutline (solid  7 ) black
    ,
    oval 80 80 
      |> filled white
      |> scaleX 1.5
      |> scaleY 1.5
      |> move (-290.37209302325556, 7.999999999999972)
      |> addOutline (solid  7 ) black
  ] 

--Austin's Slides & Shapes
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