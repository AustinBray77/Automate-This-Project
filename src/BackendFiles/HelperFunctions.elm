module BackendFiles.HelperFunctions exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

import BackendFiles.KeyFunctions exposing (..)
import Array

addToEnd: appendable -> appendable -> appendable
addToEnd second first =
    first ++ second

tupleToString: (Float, Float) -> String
tupleToString (float1, float2) =
    ["(", String.fromFloat float1, ", ", String.fromFloat float2, ")"]
        |> List.foldr (++) ""

--Returns the value if they are all equal, otherwise Nothing
allEqual: List (Maybe a) -> Maybe a
allEqual list =
  let 
    returnIfEqual: Maybe a -> Maybe a -> Maybe a
    returnIfEqual val1 val2 =
      if val1 == val2 then 
        val1
      else Nothing
  in
  List.foldl returnIfEqual (Maybe.withDefault Nothing <| List.head list) list

allEqualFloat: List Float -> Maybe Float
allEqualFloat list =
  List.map (\x -> Just x) list
    |> allEqualMaybeFloat 

allEqualMaybeFloat: List (Maybe Float) -> Maybe Float
allEqualMaybeFloat list =
  let 
    returnIfEqual: (Maybe Float) -> (Maybe Float) -> (Maybe Float)
    returnIfEqual float1 float2 =
      case (float1, float2) of 
        (Just f1, Just f2) ->
          if floatEqual f1 f2 then 
            Just ((f1 + f2 ) / 2) 
          else 
            Nothing
        _ -> Nothing
  in
  List.foldl returnIfEqual (Maybe.withDefault Nothing <| List.head list) list

--Returns if two Floats are within a certain tolerance of each other
floatEqual: Float -> Float -> Bool
floatEqual float1 float2 =
  let
    tolerance = 10 ^ -6
  in
    abs (float1 - float2) <= tolerance

floatTupleEqual: (Float, Float) -> (Float, Float) -> Bool
floatTupleEqual (x1, y1) (x2, y2) =
  floatEqual x1 x2 && floatEqual y1 y2

positionDelta: (Float, Float) -> (Float, Float) -> (Float, Float)
positionDelta (x1, y1) (x2, y2) = (x2 - x1, y2 - y1)

addTuple: (Float, Float) -> (Float, Float) -> (Float, Float)
addTuple (a1, b1) (a2, b2) =
  (a1 + a2, b1 + b2)

roundTupleToNearest: Float -> (Float, Float) -> (Float, Float)
roundTupleToNearest roundAmount (x, y) = 
  (roundToNearest roundAmount x, roundToNearest roundAmount y)

roundToNearest: Float -> Float -> Float
roundToNearest roundAmount value =
  (1 / roundAmount) * value
  |> round
  |> toFloat
  |> (*) roundAmount

roundToDigits: Int -> Float -> Float
roundToDigits digits value = 
  10 ^ digits
    |> toFloat 
    |> (*) value
    |> round
    |> toFloat
    |> (*) (toFloat (10 ^ -digits))

--String should be a valid float
stringRoundToDecimals: Int -> String -> String
stringRoundToDecimals digits string = 
  let
    parts: Array.Array String 
    parts = Array.fromList (String.split "." string)
  in
  case Array.get 1 parts of
    Nothing ->
      string
    Just decimal ->
      (String.left digits decimal)
        |> (++) "."
        |> (++) (Maybe.withDefault "" <| Array.get 0 parts)



  