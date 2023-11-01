module SlidesFiles.HistoryOfAlgorithms exposing (..)

import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)

-- made by Tamilla animated by Joshua
historyOfAlgorithms: SlideInput -> Shape Msg
historyOfAlgorithms input = 
  group [
    rect screen.x screen.y  
    |> filled white
    ,
    text (typeWriter "History of Algorithms" 0.1 0.2 (TimeData 0 2 Once) input.time)
    |> bold
    |> size 140 
    |> alignLeft
    |> filled black
    |> move (-650, 90)
    ,
    group 
    [
      text "The word algorithm comes from a Persian mathematician" 
      |> size 60 
      |> alignRight 
      |> filled black
      |> move (700, -10)
      |> addOutline (solid  1 ) black
      ,
      text "who produced the first known book of algebra called" 
      |> size 60 
      |> alignRight 
      |> filled black
      |> move (640, -90)
      |> addOutline (solid  1 ) black
      ,
      text "The Compendious Book on Calculation by" 
      |> size 60 
      |> alignRight 
      |> filled black
      |> move (530, -170)
      |> addOutline (solid  1 ) black
      ,
      text "Completion and Balancing." 
      |> size 60 
      |> alignRight 
      |> filled black
      |> move (350, -250)
      |> addOutline (solid  1 ) black
    ]
    |> animate [(fromTill (TimeData 5 0 Once) (Just easeIn) makeShapeTransparent)] input.time
    ,
    poll
      |> move (0, 50)
    ,
    poll
      |> move (1615, 50)
    ,
    ngon 6 100 
      |> filled (rgb 221 213 32)
      |> animate [(rotateAni 30)] input.time
      |> move (-300, -550)
      |> addOutline (solid  0 ) black
      |> clipToScreen
    ,
    ngon 6 250 
      |> filled (rgb 209 80 67)
      |> animate [(rotateAni -15)] input.time
      |> move (100, -650)
      |> addOutline (solid  0 ) black
      |> clipToScreen
    ,
    ngon 6 150 
      |> filled (rgb 64 143 225)
      |> animate [(rotateAni -20)] input.time
      |> rotate (degrees -30 )
      |> move (-75, 575)
      |> clipToScreen
  ]
  |> transition [(moveAni 500 2000)] input.transitionTime input.state

poll: Shape Msg
poll = 
  group
  [
    curve (66.944,53.152) [Pull (81.200,53.152) (95.457,53.152),Pull (95.457,51.757) (95.457,50.363),Pull (94.372,50.363) (93.288,50.363),Pull (93.288,50.208) (93.288,50.053),Pull (92.358,48.813) (91.428,47.573),Pull (91.273,47.573) (91.118,47.573),Pull (90.808,46.799) (90.498,46.024),Pull (89.723,45.714) (88.949,45.404),Pull (89.414,45.094) (89.878,44.784),Pull (89.878,44.629) (89.878,44.474),Pull (89.569,44.474) (89.259,44.474),Pull (89.414,44.164) (89.569,43.854),Pull (89.569,42.615) (89.569,41.375),Pull (89.569,41.220) (89.569,41.065),Pull (90.033,40.755) (90.498,40.445),Pull (90.498,40.135) (90.498,39.825),Pull (90.188,39.670) (89.878,39.515),Pull (89.878,39.205) (89.878,38.895),Pull (89.723,38.430) (89.569,37.966),Pull (89.259,37.656) (88.949,37.346),Pull (88.794,37.036) (88.639,36.726),Pull (88.639,-2.789) (88.639,-42.30),Pull (88.794,-42.92) (88.949,-43.54),Pull (89.414,-43.85) (89.878,-44.16),Pull (90.033,-44.62) (90.188,-45.09),Pull (90.033,-45.24) (89.878,-45.40),Pull (89.878,-45.55) (89.878,-45.71),Pull (90.343,-46.02) (90.808,-46.33),Pull (90.653,-46.64) (90.498,-46.95),Pull (89.878,-47.10) (89.259,-47.26),Pull (89.414,-47.57) (89.569,-47.88),Pull (89.569,-48.96) (89.569,-50.05),Pull (89.569,-50.36) (89.569,-50.67),Pull (89.723,-50.67) (89.878,-50.67),Pull (89.878,-50.98) (89.878,-51.29),Pull (89.723,-51.29) (89.569,-51.29),Pull (89.569,-51.44) (89.569,-51.60),Pull (90.188,-52.22) (90.808,-52.84),Pull (90.963,-53.30) (91.118,-53.77),Pull (91.118,-54.08) (91.118,-54.39),Pull (91.583,-54.39) (92.048,-54.39),Pull (92.978,-55.16) (93.907,-55.94),Pull (93.907,-56.40) (93.907,-56.87),Pull (94.682,-56.71) (95.457,-56.56),Pull (95.457,-57.95) (95.457,-59.35),Pull (81.200,-59.35) (66.944,-59.35),Pull (66.944,-57.80) (66.944,-56.25),Pull (66.944,-56.25) (66.944,-56.25),Pull (67.874,-56.25) (68.803,-56.25),Pull (69.578,-55.16) (70.353,-54.08),Pull (70.818,-54.08) (71.283,-54.08),Pull (71.438,-53.46) (71.593,-52.84),Pull (72.058,-52.37) (72.523,-51.91),Pull (72.832,-51.91) (73.142,-51.91),Pull (73.142,-51.75) (73.142,-51.60),Pull (72.832,-51.44) (72.523,-51.29),Pull (72.523,-51.13) (72.523,-50.98),Pull (72.677,-50.82) (72.832,-50.67),Pull (72.832,-50.36) (72.832,-50.05),Pull (72.987,-48.96) (73.142,-47.88),Pull (73.142,-47.57) (73.142,-47.26),Pull (72.677,-47.10) (72.213,-46.95),Pull (72.058,-46.64) (71.903,-46.33),Pull (72.213,-46.02) (72.523,-45.71),Pull (72.523,-45.71) (72.523,-45.71),Pull (72.523,-45.40) (72.523,-45.09),Pull (72.677,-44.47) (72.832,-43.85),Pull (73.297,-43.69) (73.762,-43.54),Pull (73.762,-3.409) (73.762,36.726),Pull (73.297,37.191) (72.832,37.656),Pull (72.677,38.276) (72.523,38.895),Pull (72.523,39.205) (72.523,39.515),Pull (72.213,39.825) (71.903,40.135),Pull (72.213,40.600) (72.523,41.065),Pull (72.832,41.065) (73.142,41.065),Pull (73.142,42.460) (73.142,43.854),Pull (73.142,43.854) (73.142,43.854),Pull (73.142,44.164) (73.142,44.474),Pull (72.832,44.474) (72.523,44.474),Pull (72.523,44.784) (72.523,45.094),Pull (72.677,45.094) (72.832,45.094),Pull (72.832,45.404) (72.832,45.714),Pull (72.213,46.024) (71.593,46.334),Pull (71.593,46.334) (71.593,46.334),Pull (71.438,46.953) (71.283,47.573),Pull (71.283,47.883) (71.283,48.193),Pull (70.973,48.193) (70.663,48.193),Pull (69.733,48.968) (68.803,49.743),Pull (68.958,49.898) (69.113,50.053),Pull (68.029,50.208) (66.944,50.363),Pull (66.944,51.757) (66.944,53.152)]
      |> filled (rgb 167 199 231) 
      |> move (-165,-0.5)
      |> scaleX 9.5
      |> scaleY 10
      ,
    curve (66.944,53.152) [Pull (81.200,53.152) (95.457,53.152),Pull (95.457,51.757) (95.457,50.363),Pull (94.372,50.363) (93.288,50.363),Pull (93.288,50.208) (93.288,50.053),Pull (92.358,48.813) (91.428,47.573),Pull (91.273,47.573) (91.118,47.573),Pull (90.808,46.799) (90.498,46.024),Pull (89.723,45.714) (88.949,45.404),Pull (89.414,45.094) (89.878,44.784),Pull (89.878,44.629) (89.878,44.474),Pull (89.569,44.474) (89.259,44.474),Pull (89.414,44.164) (89.569,43.854),Pull (89.569,42.615) (89.569,41.375),Pull (89.569,41.220) (89.569,41.065),Pull (90.033,40.755) (90.498,40.445),Pull (90.498,40.135) (90.498,39.825),Pull (90.188,39.670) (89.878,39.515),Pull (89.878,39.205) (89.878,38.895),Pull (89.723,38.430) (89.569,37.966),Pull (89.259,37.656) (88.949,37.346),Pull (88.794,37.036) (88.639,36.726),Pull (88.639,-2.789) (88.639,-42.30),Pull (88.794,-42.92) (88.949,-43.54),Pull (89.414,-43.85) (89.878,-44.16),Pull (90.033,-44.62) (90.188,-45.09),Pull (90.033,-45.24) (89.878,-45.40),Pull (89.878,-45.55) (89.878,-45.71),Pull (90.343,-46.02) (90.808,-46.33),Pull (90.653,-46.64) (90.498,-46.95),Pull (89.878,-47.10) (89.259,-47.26),Pull (89.414,-47.57) (89.569,-47.88),Pull (89.569,-48.96) (89.569,-50.05),Pull (89.569,-50.36) (89.569,-50.67),Pull (89.723,-50.67) (89.878,-50.67),Pull (89.878,-50.98) (89.878,-51.29),Pull (89.723,-51.29) (89.569,-51.29),Pull (89.569,-51.44) (89.569,-51.60),Pull (90.188,-52.22) (90.808,-52.84),Pull (90.963,-53.30) (91.118,-53.77),Pull (91.118,-54.08) (91.118,-54.39),Pull (91.583,-54.39) (92.048,-54.39),Pull (92.978,-55.16) (93.907,-55.94),Pull (93.907,-56.40) (93.907,-56.87),Pull (94.682,-56.71) (95.457,-56.56),Pull (95.457,-57.95) (95.457,-59.35),Pull (81.200,-59.35) (66.944,-59.35),Pull (66.944,-57.80) (66.944,-56.25),Pull (66.944,-56.25) (66.944,-56.25),Pull (67.874,-56.25) (68.803,-56.25),Pull (69.578,-55.16) (70.353,-54.08),Pull (70.818,-54.08) (71.283,-54.08),Pull (71.438,-53.46) (71.593,-52.84),Pull (72.058,-52.37) (72.523,-51.91),Pull (72.832,-51.91) (73.142,-51.91),Pull (73.142,-51.75) (73.142,-51.60),Pull (72.832,-51.44) (72.523,-51.29),Pull (72.523,-51.13) (72.523,-50.98),Pull (72.677,-50.82) (72.832,-50.67),Pull (72.832,-50.36) (72.832,-50.05),Pull (72.987,-48.96) (73.142,-47.88),Pull (73.142,-47.57) (73.142,-47.26),Pull (72.677,-47.10) (72.213,-46.95),Pull (72.058,-46.64) (71.903,-46.33),Pull (72.213,-46.02) (72.523,-45.71),Pull (72.523,-45.71) (72.523,-45.71),Pull (72.523,-45.40) (72.523,-45.09),Pull (72.677,-44.47) (72.832,-43.85),Pull (73.297,-43.69) (73.762,-43.54),Pull (73.762,-3.409) (73.762,36.726),Pull (73.297,37.191) (72.832,37.656),Pull (72.677,38.276) (72.523,38.895),Pull (72.523,39.205) (72.523,39.515),Pull (72.213,39.825) (71.903,40.135),Pull (72.213,40.600) (72.523,41.065),Pull (72.832,41.065) (73.142,41.065),Pull (73.142,42.460) (73.142,43.854),Pull (73.142,43.854) (73.142,43.854),Pull (73.142,44.164) (73.142,44.474),Pull (72.832,44.474) (72.523,44.474),Pull (72.523,44.784) (72.523,45.094),Pull (72.677,45.094) (72.832,45.094),Pull (72.832,45.404) (72.832,45.714),Pull (72.213,46.024) (71.593,46.334),Pull (71.593,46.334) (71.593,46.334),Pull (71.438,46.953) (71.283,47.573),Pull (71.283,47.883) (71.283,48.193),Pull (70.973,48.193) (70.663,48.193),Pull (69.733,48.968) (68.803,49.743),Pull (68.958,49.898) (69.113,50.053),Pull (68.029,50.208) (66.944,50.363),Pull (66.944,51.757) (66.944,53.152)]
      |> outlined (solid 1) (rgb 27 83 141)
      |> move (-165,-0.5)
      |> scaleX 9.5
      |> scaleY 10
      ,
    curve (4.6489,35.486) [Pull (4.6489,-3.099) (4.6489,-41.68),Pull (5.2687,-41.68) (5.8886,-41.68),Pull (6.0435,-41.68) (6.1985,-41.68),Pull (6.0435,-3.099) (5.8886,35.486),Pull (5.2687,35.486) (4.6489,35.486)]
      |> filled (rgb 27 83 141)
      |> move (-94,0)
      |> scaleX 9.5
      |> scaleY 10
      ,
    curve (4.6489,35.486) [Pull (4.6489,-3.099) (4.6489,-41.68),Pull (5.2687,-41.68) (5.8886,-41.68),Pull (6.0435,-41.68) (6.1985,-41.68),Pull (6.0435,-3.099) (5.8886,35.486),Pull (5.2687,35.486) (4.6489,35.486)]
      |> filled (rgb 27 83 141)
      |> move (-92,0)
      |> scaleX 9.5
      |> scaleY 10
      ,
    curve (4.6489,35.486) [Pull (4.6489,-3.099) (4.6489,-41.68),Pull (5.2687,-41.68) (5.8886,-41.68),Pull (6.0435,-41.68) (6.1985,-41.68),Pull (6.0435,-3.099) (5.8886,35.486),Pull (5.2687,35.486) (4.6489,35.486)]
      |> filled (rgb 27 83 141)
      |> move (-90,0)
      |> scaleX 9.5
      |> scaleY 10
      ,
    curve (4.6489,35.486) [Pull (4.6489,-3.099) (4.6489,-41.68),Pull (5.2687,-41.68) (5.8886,-41.68),Pull (6.0435,-41.68) (6.1985,-41.68),Pull (6.0435,-3.099) (5.8886,35.486),Pull (5.2687,35.486) (4.6489,35.486)]
      |> filled (rgb 27 83 141)
      |> move (-88,0)
      |> scaleX 9.5
      |> scaleY 10
      ,
    curve (4.6489,35.486) [Pull (4.6489,-3.099) (4.6489,-41.68),Pull (5.2687,-41.68) (5.8886,-41.68),Pull (6.0435,-41.68) (6.1985,-41.68),Pull (6.0435,-3.099) (5.8886,35.486),Pull (5.2687,35.486) (4.6489,35.486)]
      |> filled (rgb 27 83 141)
      |> move (-86,0)
      |> scaleX 9.5
      |> scaleY 10
      ,
    curve (4.6489,35.486) [Pull (4.6489,-3.099) (4.6489,-41.68),Pull (5.2687,-41.68) (5.8886,-41.68),Pull (6.0435,-41.68) (6.1985,-41.68),Pull (6.0435,-3.099) (5.8886,35.486),Pull (5.2687,35.486) (4.6489,35.486)]
      |> filled (rgb 27 83 141)
      |> move (-84,0)
      |> scaleX 9.5
      |> scaleY 10
      ,
      rect 150 10
      |> filled (rgb 27 83 141)
      |> move (-795,450)
      ,
      rect 150 10
      |> filled (rgb 27 83 141)
      |> move (-795,-430)
      ,
      rect 150 10
      |> filled (rgb 27 83 141)
      |> move (-795,370)
      ,
      rect 150 10
      |> filled (rgb 27 83 141)
      |> move (-795,-500)
  ]