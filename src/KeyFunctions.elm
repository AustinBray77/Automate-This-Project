module KeyFunctions exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

keyPressed: (Keys -> KeyState) -> Keys -> Bool
keyPressed keyInfo key =
  keyInfo key == JustDown || keyInfo key == Down
  
anyKeyPressed: List Keys -> (Keys -> KeyState) -> Bool
anyKeyPressed keys keyInfo =
  (List.filter (keyPressed keyInfo) keys
  |> List.length) >= 1

getKeyPressedFromList: List Keys -> (Keys -> KeyState) -> Int
getKeyPressedFromList keys keyInfo =
  List.map (keyPressed keyInfo) keys
  |> List.indexedMap Tuple.pair
  |> List.filter (Tuple.second) 
  |> List.head
  |> Maybe.withDefault (-1, True)
  |> Tuple.first
