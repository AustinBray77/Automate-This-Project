module KeyFunctions exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

-- Takes in a Ellie App KeyState, a Key, and a List of States
-- Returns if the key has any of the given states
checkKey: (Keys -> KeyState) -> List KeyState -> Keys -> Bool
checkKey keyInfo states key =
  List.filter (\k -> keyInfo key == k) states
  |> List.length
  |> (/=) 0

-- Takes in a Ellie App KeyState and a Key
-- Returns if the key is being pressed
keyPressed: (Keys -> KeyState) -> Keys -> Bool
keyPressed keyInfo key =
  checkKey keyInfo [Down, JustDown] key

-- Takes in a list of Keys and a Ellie App KeyState
-- Returns if any key in the list is being pressed
anyKeyPressed: List Keys -> (Keys -> KeyState) -> Bool
anyKeyPressed keys keyInfo =
  (List.filter (keyPressed keyInfo) keys
  |> List.length) >= 1

-- Takes in a Ellie App KeyState and a Key
-- Returns if the key has just been pressed
keyJustPressed: (Keys -> KeyState) -> Keys -> Bool
keyJustPressed keyInfo key =
  checkKey keyInfo [JustDown] key

-- Takes in a list of Keys and a Ellie App KeyState
-- Returns if any key in the list has just been pressed
anyKeyJustPressed: List Keys -> (Keys -> KeyState) -> Bool
anyKeyJustPressed keys keyInfo =
  (List.filter (keyJustPressed keyInfo) keys
  |> List.length) >= 1

-- Takes in a list of Keys and an Ellie App KeyState
-- Returns the index of the first key that is being pressed
getKeyCheckFromList: List Keys -> List KeyState ->(Keys -> KeyState) -> Int
getKeyCheckFromList keys states keyInfo =
  List.map (checkKey keyInfo states) keys
  |> List.indexedMap Tuple.pair
  |> List.filter (Tuple.second) 
  |> List.head
  |> Maybe.withDefault (-1, True)
  |> Tuple.first
