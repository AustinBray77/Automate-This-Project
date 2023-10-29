module BackendFiles.KeyFunctions exposing (..)
import Dict exposing (..)
import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

numberKeys : List Keys
numberKeys = [ Key "0", Key "1", Key "2", Key "3", Key "4", Key "5", Key "6", Key "7", Key "8", Key "9"]

stringKeys: List Keys
stringKeys = 
  let 
    chars = "1234567890qwertyuiop[]\\-=asdfghjkl;'zxcvbnm,./{}|:\"<>?"
  in
  String.toList chars
    |> List.map (String.fromChar)
    |> List.map (\x -> Key x)

-- Takes in a Ellie App KeyState, a Key, and a List of States
-- Returns if the key has any of the given states
checkKey: (Keys -> KeyState) -> List KeyState -> Keys -> Bool
checkKey keyInfo states key =
  List.filter (\k -> keyInfo key == k) states
  |> List.length
  |> (/=) 0

applyShift: String -> String
applyShift char = 
  let 
    keys = List.map String.fromChar <| String.toList "abcdefghijklmnopqrstuvwxyz1234567890"
    vals = List.map String.fromChar <| String.toList "ABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()"
    dict = 
      List.map2 Tuple.pair keys vals
        |> Dict.fromList
  in  
    Dict.get char dict 
      |> Maybe.withDefault char

applyUp: String -> String
applyUp char = 
  let 
    keys = List.map String.fromChar <| String.toList "pm123456789qwertyuio"
    vals = List.map String.fromChar <| String.toList ".-{}[]_=+;:\'\"`~\\|,<>"
    dict = 
      List.map2 Tuple.pair keys vals
        |> Dict.fromList
  in  
    Dict.get char dict 
      |> Maybe.withDefault char


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
-- Returns the first key that is being pressed
getKeyCheckFromList: List Keys -> List KeyState -> (Keys -> KeyState) -> Maybe Keys
getKeyCheckFromList keys states keyInfo =
  List.filter (checkKey keyInfo states) keys
  |> List.head
