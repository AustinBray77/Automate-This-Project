module SlidesFiles.FutureSlides exposing (..)
import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)
import SlidesFiles.FinanceSlides exposing (algorithmImage, person, emptyThought)

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