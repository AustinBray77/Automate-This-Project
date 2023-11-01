module SlidesFiles.Conclusion exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

logos: Float -> Shape Msg
logos input =  group
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
      |> move (143, 37)
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
      |> move (62, 251)
    ,
      group
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
      |> move (-121, 75)
  ]
conclusionSlide: SlideInput -> Shape Msg
conclusionSlide input =
  group[
    background2 input.time
    ,
    logos input.time
  
  ]
  |> transition [(moveAni 1000 0)] input.transitionTime input.state