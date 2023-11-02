module SlidesFiles.Intro exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.SlideUtilTypes exposing (..)
import SlidesFiles.BackgroundSlides exposing (background1)
import BackendFiles.Animations exposing (..)

introSlide : SlideInput -> Shape Msg
introSlide input = 
  [
    background1 input.time,
  [
    group
    [  
      roundedRect 350 150 0 
        |> filled (rgba 0 0 0 0)
        |> move (-20, -102)
        |> addOutline (solid  5 ) black
      ,
      roundedRect 650 150 0 
        |> filled (rgba 0 0 0 0)
        |> move (-200, 292.40000000000003)
        |> addOutline (solid  5 ) black
      ,
      text "Automate" 
        |> size 148 
        |> alignLeft 
        |> filled black
        |> move (-500, 250)
      ,
      text "This" 
        |> size 148 
        |> alignLeft 
        |> filled black
        |> move (-150, -150)
      ,
      text "By: Austin, Ayush, Dhiren, Joshua, Tamilla, and Yujiro" 
        |> size 54 
        |> centered
        |> filled black
        |> move (0, -500),
      ngon 3 65 
        |> filled black
        |> scaleX 0.5
        |> scaleY 0.5
        |> move (-250, -105)
        |> addOutline (solid  5 ) black
      ,
      roundedRect 135 0 0 
        |> filled red
        |> move (-382.7999999999999, -105.6)
        |> addOutline (solid  5 ) black
      ,
      roundedRect 200 1 0 
        |> filled red
        |> move (-370, -105)
        |> addOutline (solid  5 ) black
      ,
      roundedRect 1 200 0 
        |> filled red
        |> move (-470, -5)
        |> addOutline (solid  5 ) black
      ,
      roundedRect 1 750 0 
        |> filled red
        |> rotate (degrees -90 )
        |> move (-95, 95)
        |> addOutline (solid  5 ) black
      ,
      roundedRect 1 175 0 
        |> filled red
        |> move (280, 185)
        |> addOutline (solid  5 ) black
      ,
      roundedRect 150 1 0 
        |> filled red
        |> move (205, 275)
        |> addOutline (solid  5 ) black
    ]
    |> scale 0.1
    ]
    |> group
    |> scale 10
    ]
    |> group
    |> transition [(fromTill (TimeData 0 1 Once) (Just tanScaled) (particlizeAndExplodeShape 100 1000 4 (0, 0)))] input.transitionTime input.state