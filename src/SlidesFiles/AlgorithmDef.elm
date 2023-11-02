module SlidesFiles.AlgorithmDef exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

flowchart: Float -> Shape Msg
flowchart time =
  group
  [  
      List.foldr union (rect 0 0 |> ghost) --row 3 first
      [      
        roundedRect 8 40 0 
          |> filled black
          |> rotate (degrees -37 )
          |> move (-573, -151)
        ,
        ngon 3 10 
          |> filled black
          |> rotate (degrees -7 )
          |> move (-586, -169)
     ]
      |> move (-246, 20)
      |> animate [(fromTill (TimeData 6 7 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
    ,
      List.foldr union (rect 0 0 |> ghost)-- row 2 first
      [      
        ngon 3 10 
          |> filled black
          |> rotate (degrees -7 )
          |> move (-483, -30)
        ,
        roundedRect 8 40 0 
          |> filled black
          |> rotate (degrees -37 )
          |> move (-468, -8)
      ]
      |> move (-241, 18)
      |> animate [(fromTill (TimeData 4 5 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time

    ,
      List.foldr union (rect 0 0 |> ghost)--last row arrow middle
      [      
        ngon 3 10 
          |> filled black
          |> rotate (degrees -90 )
          |> move (-380, -338)
          
        ,
        roundedRect 8 80 0 
          |> filled black
          |> move (-381, -298)
      ]
      |> animate [(fromTill (TimeData 8 9 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
      |> move (-241, 19)
    ,
      List.foldr union (rect 0 0 |> ghost)-- row 2 second
      [      
        ngon 3 10 
          |> filled black
          |> rotate (degrees -60 )
          |> move (-296, -20)
        ,
        roundedRect 8 40 0 
          |> filled black
          |> rotate (degrees 37 )
          |> move (-307, -5)
      ]
      |> move (-239, 17)
      |> animate [(fromTill (TimeData 4 5 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
    ,
      List.foldr union (rect 0 0 |> ghost)-- row 3 right
      [      
        roundedRect 8 40 0 
          |> filled black
          |> rotate (degrees 37 )
          |> move (-410, -153)
        ,
        ngon 3 10 
          |> filled black
          |> rotate (degrees -60 )
          |> move (-397, -169)
      ]
      |> move (-238, 20)
      |> animate [(fromTill (TimeData 6 8 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
    ,
      List.foldr union (rect 0 0 |> ghost)--last row left
      [      
        roundedRect 8 140 0 
          |> filled black
          |> move (-591, -328)
          |> addOutline (solid  5 ) black
        ,
        ngon 3 10 
          |> filled black
          |> move (-486, -395)
        ,
        roundedRect 8 110 0 
          |> filled black
          |> rotate (degrees -90 )
          |> move (-539, -394)
      ]
      |> move (-253, 16)
       |> animate [(fromTill (TimeData 8 9 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
    ,
      List.foldr union (rect 0 0 |> ghost)-- last row right
      [      
        roundedRect 6 290 0 
          |> filled black
          |> move (-236, -257)
          |> addOutline (solid  5 ) black
        ,
        roundedRect 8 20 0 
          |> filled black
          |> rotate (degrees -90 )
          |> move (-248, -398)
          ,
        ngon 3 10 
          |> filled black
          |> rotate (degrees -180 )
          |> move (-265, -397)
      ]
      |> move (-247, 14)
      |> animate [(fromTill (TimeData 6 7 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
    ,
      List.foldr union (rect 0 0 |> ghost)-- first arrow
      [      
        ngon 3 10 
          |> filled black
          |> rotate (degrees -90 )
          |> move (-386, 122)
          --|> addOutline (solid  5 ) black
        ,
        roundedRect 8 40 0 
          |> filled black
          |> move (-386, 144)
          --|> addOutline (solid  5 ) black
      ]
      |> animate [(fromTill (TimeData 2 4 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
      |> move (-240, 16)
      --|> addOutline (solid  2 ) black
    ,
    roundedRect 200 100 50 
      |> filled (rgb 100 100 100)
      |> move (-625, 235)
      |> animate [(fromTill (TimeData 2 4 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 192 192 192 255)))] time
      --|> addOutline (solid  5 ) black
    ,
    ngon 4 70 
      |> filled lightBlue
      |> scaleX 1.5
      |> move (-626, 51)
      |> animate [(fromTill (TimeData 4 6 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 135 206 250 255)))] time
    ,
    ngon 4 70 
      |> filled lightBlue
      |> scaleX 1.5
      |> move (-737, -94)
      |> animate [(fromTill (TimeData 6 8 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 135 206 250 255)))] time
    ,
    roundedRect 140 80 0 --last organge  right
      |> filled (rgb 255 144 117)
      |> move (-830, -200)
      |> animate [(fromTill (TimeData 8 10 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 255 144 117 255)))] time
    ,
    roundedRect 140 80 0 --last orrange middle
      |> filled (rgb 255 144 117)
      |> move (-618, -199)
      |> animate [(fromTill (TimeData 8 10 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 255 144 117 255)))] time

    ,
    roundedRect 140 80 0 --first organge right
      |> filled (rgb 255 144 117)
      |> move (-510, -56)
      |> animate [(fromTill (TimeData 6 8 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 255 144 117 255)))] time

    ,
    roundedRect 200 100 50 
      |> filled (rgb 255 80 80)
      |> move (-625, -386)
      |> animate [(fromTill (TimeData 10 12 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 255 80 80 255)))] time
      
    ,
    text "START" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-663, 227)
      |> animate [(fromTill (TimeData 2 4 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 250)))] time
    ,
    text "STOP" 
      |> size 25 
      |> alignLeft 
      |> filled black
      |> move (-651, -390)
      |> animate [(fromTill (TimeData 10 12 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 250)))] time
  ]
  |>move (80, 0)

examples:Float->Shape Msg
examples time =
  group
  [  
    roundedRect 350 80 30 
      |> filled white
      |> move (80, -60)
      |> addOutline (solid  5 ) (rgb 180 180 255)
      |> animate [(fromTill (TimeData 12 12.5 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 180 180 255 250)))] time
    ,
    roundedRect 350 80 30 
      |> filled white
      |> move (80, -162.81524926686217)
      |> addOutline (solid  5 ) (rgb 180 180 255)
      |> animate [(fromTill (TimeData 12.5 13 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 180 180 255 250)))] time
    ,
    roundedRect 350 80 30 
      |> filled white
      |> move (80, -262.81524926686217)
      |> addOutline (solid  5 ) (rgb 180 180 255)
      |> animate [(fromTill (TimeData 13 13.5 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 180 180 255 250)))] time
    ,
    text "SORTING" 
      |> size 30 
      |> alignLeft 
      |> filled black
      |> move (13, -270)
      |> animate [(fromTill (TimeData 13 13.5 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 250)))] time
    ,
    text "DAILY ROUTINES" 
      |> size 30 
      |> alignLeft 
      |> filled black
      |> move (-40, -170)
      |> animate [(fromTill (TimeData 12.5 13 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 250)))] time
    ,
    text "FOLLOWING A RECIPE" 
      |> size 30 
      |> alignLeft 
      |> filled black
      |> move (-75, -70)
      |> animate [(fromTill (TimeData 12 12.5 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 250)))] time
  ]
  |>move(0,-100)

  
algorithmText: Float -> Shape Msg
algorithmText time =
  group[
        text ("\"(An Algorithm) is a list of instructions that")
      |>size 60
        |>centered
        |> filled black
        |> move (100,160)
        ,
        text ("leads its user to a particular answer or ")
      |>size 60
        |>centered
        |> filled black
        |> move (100,100)
        ,
        text ("output based on the information at hand\"")
      |>size 60
        |>centered
        |> filled black
        |> move (100,40)
        ,
        text ("-Automate This, p.5")
      |>size 60
        |>centered
        |>italic
        |> filled black
        |> move (100,-20)
        ]
      |> animate [(fromTill (TimeData 4 6 Once) Nothing (fadeShapeToColor (RGBA 255 255 255 0) (RGBA 0 0 0 255)))] time
       
algorithmDefSlide: SlideInput -> Shape Msg
algorithmDefSlide input =
 group[
  background1 input.time,
  text (typeWriter "What is an Algorithm?" 0.2 0.2 (TimeData 0 2 Once) input.time)
    |> size 120
    |> alignLeft 
    |> filled black
    |> move (-600, 350)
  ,
  algorithmText input.time
  ,
  examples input.time
  ,
  flowchart input.time
 ]
 |> transition [(moveAni 1000 0)] input.transitionTime input.state

    
