module HelperFunctions exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

import KeyFunctions exposing (..)

--Returns the value if they are all equal, otherwise Nothing
allEqualFloat: List Float -> Maybe Float
allEqualFloat list =
  if List.length list == 0 then
    Nothing
  else if List.length list == 1 then
    List.head list
  else if floatEqual (List.head list) (List.head <| List.drop 1 list) then
    if List.length list == 2 then
      List.head list
    else 
      allEqualFloat (List.drop 1 list)
  else
    Nothing

--Returns if two Maybe Floats are within a certain tolerance of each other
floatEqual: Maybe Float -> Maybe Float -> Bool
floatEqual float1 float2 =
  let
    tolerance = 10 ^ -6
  in
  case (float1, float2) of 
    (Just value1, Just value2) ->
      abs (value1 - value2) <= tolerance
    _ -> 
      False

positionDelta: (Float, Float) -> (Float, Float) -> (Float, Float)
positionDelta (x1, y1) (x2, y2) = (x2 - x1, y2 - y1)

addTuple: (Float, Float) -> (Float, Float) -> (Float, Float)
addTuple (a1, b1) (a2, b2) =
  (a1 + a2, b1 + b2)

roundToDigits: Int -> Float -> Float
roundToDigits digits value = 
    10 ^ digits
      |> toFloat 
      |> (*) value
      |> round
      |> toFloat
      |> (*) (toFloat (10 ^ -digits))
