module Slides exposing (..)

import GraphicSVG exposing (..)
import BackendFiles.SlideUtilTypes exposing (..)
import BackendFiles.SlideUtilTypes exposing (Msg)
import BackendFiles.Animations exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)
import SlidesFiles.BackgroundSlides exposing (..)
import SlidesFiles.FinanceSlides exposing (..)
import SlidesFiles.EntertainmentSlides exposing (..)
import SlidesFiles.Medical exposing (..)
import SlidesFiles.Games exposing (..)
import SlidesFiles.HistoryOfAlgorithms exposing (..)
import SlidesFiles.FutureSlides exposing (..)
import SlidesFiles.AlgorithmDef exposing (algorithmDefSlide)

slideFunctions : { get : List (SlideInput -> Shape Msg) }
slideFunctions = { get = (
  -- the slides are in order 
  --!! Put slides here !!
  [algorithmDefSlide, historyOfAlgorithms, historyOfAlgorithms2, financeIntro, financeSlideAustin, financeSlideDhiren1, financeSlideDhiren2, financeSlideDhiren3, entertainmentIntroSlide,
    entertainmentSlide1, entertainmentSlide2, entertainmentConclusion, chessSlide, jeopardySlide, medicalSlide, personalityBots, futureSlideAyush, algorithmImaginerSlide] 
  --!! --------------- !!
  )} 


testingSlide: SlideInput -> Shape Msg
testingSlide input =
    background1 input.time
        |> transition [(bounceBack 2000 1000)] input.transitionTime input.state

testingSlide2: SlideInput -> Shape Msg
testingSlide2 input =
    group
    [
        background2 input.time
    ]
    |> transition [(bounceBack 2000 1000)] input.transitionTime input.state

testingSlide3: SlideInput -> Shape Msg
testingSlide3 input =
    background3 input.time
        |> transition [(bounceBack 2000 1000)] input.transitionTime input.state

testingSlide4: SlideInput -> Shape Msg
testingSlide4 input = 
    background4 input.time
        |> transition [(moveAni 2000 0)] input.transitionTime input.state

testingSlide5: SlideInput -> Shape Msg
testingSlide5 input = 
    background5 input.time
        |> transition [(moveAni 2000 0)] input.transitionTime input.state

testingSlide6: SlideInput -> Shape Msg
testingSlide6 input = 
    background6 input.time
        |> transition [(moveAni 2000 0)] input.transitionTime input.state

testingSlide7: SlideInput -> Shape Msg
testingSlide7 input = 
    background7 input.time
        |> transition [(moveAni 2000 0)] input.transitionTime input.state