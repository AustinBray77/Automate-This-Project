module SlidesFiles.FutureSlides exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

blackboard: Float -> Shape Msg
blackboard time =
  group[  
      roundedRect 640 200 0 
        |> filled (rgb 105 70 35)
        |> move (0, -130.9076558800316)
        |> addOutline (solid  5 ) (rgb 105 70 35)
      ,
      roundedRect 640 450 30 
        |> filled (rgb 105 70 35)
        |> move (0, -3.03078137332281)
        |> addOutline (solid  5 ) (rgb 105 70 35)
      ,
      roundedRect 600 200 0 
        |> filled (rgb 30 90 30)
        |> move (0, -112.13891081294392)
        |> addOutline (solid  5 ) (rgb 30 90 30)
      ,
      roundedRect 600 400 30 
        |> filled (rgb 30 90 30)
        |> move (0, 1.5153906866614193)
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
    ]
    |>move(-500, 100)


studentsSlide: SlideInput -> Shape Msg
studentsSlide input =
  group[
    background2 input.time
    ,
    blackboard input.time
  
  ]
  |> transition [(moveAni 1000 0)] input.transitionTime input.state

    