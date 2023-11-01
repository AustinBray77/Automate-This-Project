module SlidesFiles.FutureSlides exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)
import SlidesFiles.FinanceSlides exposing (algorithmImage, person, emptyThought)

blackboard:Float->Shape Msg
blackboard time=  group
  [  
    roundedRect 640 450 30 
      |> filled (rgb 105 70 35)
      |> addOutline (solid  5 ) (rgb 105 70 35)
    ,
    roundedRect 640 200 0 
      |> filled (rgb 105 70 35)
      |> move (0, -130.9076558800316)
      |> addOutline (solid  5 ) (rgb 105 70 35)
    ,
    roundedRect 600 200 0 
      |> filled (rgb 30 90 30)
      |> move (0, -112.13891081294392)
      |> addOutline (solid  5 ) (rgb 30 90 30)
    ,
    roundedRect 600 400 30 
      |> filled (rgb 30 90 30)
      |> addOutline (solid  5 ) (rgb 30 90 30)
    ,
    roundedRect 650 20 0 
      |> filled (rgb 105 70 35)
      |> move (0, -206.06156274664562)
      |> addOutline (solid  5 ) black
    ,
    roundedRect 125 8 0 
      |> filled (rgb 140 80 50)
      |> move (226.09313338595106, -170.90765588003154)
      |> addOutline (solid  5 ) black
    ,
    roundedRect 100 13 0 
      |> filled white
      |> move (-215.3512233622732, -187.95580110497235)
      |> addOutline (solid  5 ) black
    ,
    roundedRect 80 13 0 
      |> filled white
      |> move (-116.55090765588007, -189.17127071823202)
      |> addOutline (solid  5 ) black
    ,
    roundedRect 100 20 0 
      |> filled (rgb 80 80 80)
      |> move (225.62746645619558, -184.9250197316495)
      |> addOutline (solid  5 ) black
    ,
     group
  [  
    text "2010 Flash Crash" 
      |> size 30 
      |> alignLeft 
      |>fixedwidth
      |> filled white
      |> move (0, 150)
      |> addOutline (solid  1 ) blue
      ,
    text "Almost $1 trillion fell into" 
      |> size 20
      |> alignLeft 
      |>fixedwidth
      |> filled white
      |> move (-300, -40)
      ,
      text "\"electronic ether\"" 
      |> size 20
      |> alignLeft 
      |>fixedwidth
      |> filled white
      |> move (-300, -70)

  ]
  ]
  |>move(-2475,200)
  |>animate[(fromTill (TimeData 0 3 Once) (Just easeIn) (moveAni 2000 0))] time
logos: Float -> Shape Msg
logos time =  group
  [  
      group --instagram
      [      
        roundedRect 60 60 15 
          |> filled white
          |> move (271, 47)
          |> addOutline (solid  5 ) (rgb 221 60 130)
        ,
        oval 1 1 
          |> filled white
          |> move (291, 66)
          |> addOutline (solid  5 ) (rgb 221 60 130)
        ,
        oval 27 27 
          |> filled white
          |> move (271, 47)
          |> addOutline (solid  5 ) (rgb 221 60 130)
      ]
      |>move(-125,100)
      |>animate[(fromTill (TimeData 0 3 RepeatLoop) (Just easeInAndOut) (moveAni 125 -100))] time
      
    ,
      group--youtube
      [      
        roundedRect 70 52 20 
          |> filled red
          |> move (313, 34)
          |> addOutline (solid  5 ) white
        ,
        ngon 3 8 
          |> filled white
          |> move (312, 34)
          |> addOutline (solid  5 ) white
      ]
      |> move (-213, 262)
      |>animate[(fromTill (TimeData 0 3 RepeatLoop) (Just easeInAndOut) (moveAni 100 -100))] time
    ,
      group--linked in
      [      
        roundedRect 60 60 20 
          |> filled (rgb 14 118 168)
          |> move (155, 169)
          |> addOutline (solid  5 ) (rgb 14 118 168)
        ,
        text "in" 
          |> size 60 
          |> alignLeft 
          |>sansserif
          |>bold
          |> filled white
          |> move (130, 147)
          |> addOutline (solid  1 ) white
      ]
      |> move (-100, 37)
      |>animate[(fromTill (TimeData 0 3 RepeatLoop) (Just easeInAndOut) (moveAni -75 -75))] time
    ,
      group--facebook
      [      
        oval 60 60 
          |> filled blue
          |> move (214, 54)
          |> addOutline (solid  5 ) blue
        ,
        text "f" 
          |> size 80 
          |>bold
          |>sansserif
          |> alignLeft 
          |> filled white
          |> move (200, 15)
          |> addOutline (solid  1 ) white
      ]
      |> move (0, 200)
      |>animate[(fromTill (TimeData 0 3 RepeatLoop) (Just easeInAndOut) (moveAni 120 -100))] time
    ,
      group--netflix
      [      
        roundedRect 60 60 15 
          |> filled black
          |> move (277, 121)
          |> addOutline (solid  5 ) black
        ,
        text "N" 
          |> size 45 
          |>bold
          |>sansserif
          |> alignLeft 
          |> filled red
          |> move (262, 105)
          |> addOutline (solid  2 ) red
      ]
      |>move (-70, 75)
      |>animate[(fromTill (TimeData 0 3 RepeatLoop) (Just easeInAndOut) (moveAni -100 50))] time
      ,
      group --medical
      [      
        roundedRect 60 60 10 
          |> filled white
          |> addOutline (solid  5 ) black
        ,
        roundedRect 8 35 0 
          |> filled red
          |> addOutline (solid  5 ) red
        ,
        roundedRect 35 8 0 
          |> filled red
          |> addOutline (solid  5 ) red
      ]
      |> move (100, 100)
      |>animate[(fromTill (TimeData 0 3 RepeatLoop) (Just easeInAndOut) (moveAni -100 75))] time
  ]
  |>scaleX 1.5
  |> scaleY 1.5
  |> move(2000,2000)
  |>animate [(fromTill (TimeData 0 3 Once) (Just easeIn) (moveAni -1800 -2600))] time
  --|> animate [(fromTill (TimeData 3 6 RepeatLoop) (Just easeInAndOut) (moveAni 300 0))] time
  |>animate[(fromTill (TimeData 0 3 RepeatLoop) (Nothing) (moveAni 175 200))] time
flashCrash: List (Float, Float)
flashCrash=[(-92.56,51.604),(-90.00,52.951), (-86.90,52.277),(-83.80,51.604),(-78.41,51.2) ,(-73.02,50.795), (-68.31,49.044),(-63.59,47.292), (-59.28,46.753), (-54.97,46.214), (-53.35,44.463) ,(-51.73,42.711), (-47.83,44.193), (-43.92,45.675), (-41.49,44.463), (-39.07,43.250), (-35.03,45.271), (-30.98,47.292), (-26.00,47.427), (-21.01,47.562), (-17.11,46.349), (-13.20,45.136), (-8.623,45.002), (-4.042,44.867), (-1.212,42.981), (1.6168,41.094), (6.4673,41.094), (11.317,41.094), (14.416,40.016), (17.515,38.938), (19.132,36.917) ,(20.749,34.896), (21.153,33.818), (21.557,32.741), (22.096,34.088), (22.635,35.435), (24.117,31.258), (25.6,27.082), (26.543,29.642) ,(27.486,32.202), (29.911,27.082), (32.336,21.962), (34.088,-4.311), (35.84,-30.58), (37.995,-6.197), (40.151,18.189), (40.96,12.8), (41.768,7.4105), (43.250,16.976), (44.732,26.543), (45.810,22.366), (46.888,18.189), (48.774,15.629), (50.661,13.069), (51.604,11.587), (52.547,10.105), (54.703,15.629), (56.858,21.153), (59.553,25.330), (62.248,29.507)]
  |> List.map (\(a, b) -> (a, b * 1.3))
futureSlideAyush: SlideInput -> Shape Msg
futureSlideAyush input =
  group[
    background2 input.time
    ,
    blackboard input.time
    |>scaleX 1.2
    |>scaleY 1.2

    ,
    (buildLineOverTime flashCrash 0 10 input.time Nothing (solid 2) white)
    |> scale 4
    |> move (-560, 175)
    ,
    logos input.time
  
  ]
  |> transition [(moveAni 1000 0)] input.transitionTime input.state
algorithmImaginerSlide: SlideInput -> Shape Msg
algorithmImaginerSlide input = 
  group
  [
    background6 input.time
    ,
    group -- make everything rise up
    [ 
      radiantAura -- animate aura to grow in scale (or animate gradient !)
      |> move (-10, -400)
      ,
      pedestal
      |> move (50, -529)
      ,
      person
      |> scale 0.8
      |> move (35, -400)
      ,
      group --fade in thought bubbles
      [
        emptyThought 
        |> move (100, -300)
        ,
        algorithmImage
        |> scale 0.45
        |> move (425, -70)
      ]
    ]

  ]

radiantAura : Shape Msg
radiantAura = 
  circle 300
  |> filled (radialGradient [transparentStop lightYellow 0 1, transparentStop lightYellow 300 0])
 
pedestal : Shape Msg
pedestal = 
  group
  [  
      group
      [      
        roundedRect 70 200 0 
          |> filled (rgb 240 240 240)
          |> move (-100, -140)
          |> addOutline (solid  5 ) (rgb 220 220 180)
        ,
        roundedRect 85 30 5 
          |> filled (rgb 240 240 240)
          |> move (-100, -220)
          |> addOutline (solid  5 ) (rgb 220 220 180)
        ,
        roundedRect 85 30 5 
          |> filled (rgb 240 240 240)
          |> move (-100, -40)
          |> addOutline (solid  5 ) (rgb 220 220 180)
        ,
          List.foldr union (rect 0 0 |> ghost)
          [          
            roundedRect 80 65 0 
              |> filled (rgb 240 240 240)
              |> move (120, -20)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            ngon 3 20 
              |> filled (rgb 240 240 240)
              |> rotate (degrees -30 )
              |> move (80, -20)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            ngon 3 20 
              |> filled (rgb 240 240 240)
              |> rotate (degrees -30 )
              |> move (160, -20)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            roundedRect 135 30 0 
              |> filled (rgb 240 240 240)
              |> move (120, -55)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            roundedRect 135 40 20 
              |> filled (rgb 240 240 240)
              |> move (120, -39.07136715391229)
              |> addOutline (solid  0 ) (rgb 220 220 180)
          ]
          |> move (-220, -240)
          |> addOutline (solid  10 ) (rgb 220 220 180)
        ,
          List.foldr union (rect 0 0 |> ghost)
          [          
            roundedRect 80 65 0 
              |> filled (rgb 240 240 240)
              |> move (120, -20)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            ngon 3 20 
              |> filled (rgb 240 240 240)
              |> rotate (degrees -30 )
              |> move (80, -20)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            ngon 3 20 
              |> filled (rgb 240 240 240)
              |> rotate (degrees -30 )
              |> move (160, -20)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            roundedRect 135 30 0 
              |> filled (rgb 240 240 240)
              |> move (120, -55)
              |> addOutline (solid  0 ) (rgb 220 220 180)
            ,
            roundedRect 135 40 20 
              |> filled (rgb 240 240 240)
              |> move (120, -39.07136715391229)
              |> addOutline (solid  0 ) (rgb 220 220 180)
          ]
          |> rotate (degrees -180 )
          |> move (20, -20)
          |> addOutline (solid  10 ) (rgb 220 220 180)
      ]
      |> scaleX 3
      |> scaleY 3
      |> move (240, -140)
  ]
