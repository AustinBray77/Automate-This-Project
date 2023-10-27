module BackgroundSlides exposing (..)
import SlideUtilTypes exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)
import SlideUtilTypes exposing (Msg)

import Animations exposing (animate)
import Animations exposing (rotateAni)

thirdBackground: Float -> Shape Msg
thirdBackground time =
  group
  [  
    ngon 6 65 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni -15)] time
      |> move (-640, -480)
      |> addOutline (solid  0 ) black
    ,
    roundedRect 135 1080 0 
      |> filled blue
      |> move (900, 0)
      |> addOutline (solid  0 ) black
    ,
    ngon 6 250 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni 15)] time
      |> move (-980, -380)
      |> addOutline (solid  0 ) black
  ]
