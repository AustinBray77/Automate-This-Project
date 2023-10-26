module ShapesToCode exposing (..)

import GraphicSVG exposing (..)
import ShapeCreatorTypes as T exposing (..)
import HelperFunctions exposing (..)
import KeyFunctions exposing (..)
import Dict 
import ShapeCreatorConstants exposing (colStringToExportString)

getTabs: Int -> String
getTabs number =
    String.repeat number "  "

stringToTextShapes: String -> List (Shape T.Msg)
stringToTextShapes string =
  String.split "\n" string
    |> List.map (\str -> text str)
    |> List.map (size 15)
    |> List.map selectable
    |> List.map (filled black)
    |> List.indexedMap (\index shape -> move (-300, toFloat (500 - index * 15)) shape)

getColourString: String -> String
getColourString colString =
  let
    default = "red"
  in
  if Dict.member colString colStringToExportString then
    Dict.get colString colStringToExportString 
      |> Maybe.withDefault default 
  else
    case (String.split " " colString 
      |> List.filterMap String.toFloat) of 
      (r::g::b::a::[]) ->
        List.map (clamp 0 255) [r,g,b, min 1 a]
          |> List.map String.fromFloat 
          |> List.intersperse " "
          |> List.foldr (++) ")"
          |> (++) "(rgba "
      (r::g::b::[]) ->
        List.map (clamp 0 255) [r,g,b]
          |> List.map String.fromFloat 
          |> List.intersperse " "
          |> List.foldr (++) ")"
          |> (++) "(rgb "
      _ -> default

getShapeModifiers: ShapeInfo -> ShapeType -> List (List String)
getShapeModifiers info shapeType =
  let 
    scaleXFunc: (List (List String) -> List (List String)) 
    scaleXFunc = 
      if floatEqual (Tuple.first info.scale) 1 then
        identity
      else 
        (::) ["scaleX", String.fromFloat (Tuple.first info.scale)] 

    scaleYFunc: (List (List String) -> List (List String)) 
    scaleYFunc = 
      if floatEqual (Tuple.second info.scale) 1 then
        identity
      else 
        (::) ["scaleY", String.fromFloat (Tuple.second info.scale)]
    
    rotateFunc: (List (List String) -> List (List String)) 
    rotateFunc =
      if floatEqual info.rotation 0 then
        identity
      else
        (::) ["rotate", "(degrees", String.fromFloat (info.rotation * -1), ")"]
    
    moveFunc: (List (List String) -> List (List String)) 
    moveFunc = 
      if floatTupleEqual info.position (0, 0) then
        identity
      else
        (::) ["move", tupleToString info.position]

    outlineFunc: (List (List String) -> List (List String)) 
    outlineFunc = 
      case shapeType of 
        Group _ ->
          identity
        _ ->
          (::) ["addOutline", "(solid ", String.fromFloat info.outlineSize, ")" , getColourString info.outlineColour]
  in
    []
    |> outlineFunc
    |> moveFunc
    |> rotateFunc
    |> scaleYFunc
    |> scaleXFunc


shapePropertiesCode: Int -> ShapeType -> ShapeInfo -> String
shapePropertiesCode tabs3 shapeType info = 
  let
    shapeModifiers = getShapeModifiers info shapeType
  in
  case shapeModifiers of 
    [] -> ""
    _ ->
      shapeModifiers
        |> List.map (List.intersperse " ") -- L L S
        |> List.map ((++) ["|> "])           -- L L S
        |> List.map ((++) [(getTabs tabs3)]) -- L L S
        |> List.map (List.foldr (++) "")   -- L L S -> L S
        |> List.intersperse "\n"           -- L S
        |> List.foldr (++) ""  

defaultFill: Int -> String -> List String
defaultFill tabs5 colourStr = ["\n", (getTabs tabs5), "|>", "filled", getColourString colourStr]

shapeCode: Int -> (ShapeType, ShapeInfo) -> String
shapeCode tabs2 (shapeType, shapeInfo) = 
  (
  case shapeType of
    Rect width height radius ->
      ["roundedRect", String.fromFloat width, String.fromFloat height, String.fromFloat radius]
      ++ defaultFill tabs2 shapeInfo.fillColour
        |> formatList tabs2
    Oval width height -> 
      ["oval", String.fromFloat width, String.fromFloat height]
        ++ defaultFill tabs2 shapeInfo.fillColour
        |> formatList tabs2
    Ngon sides radius -> 
      ["ngon", String.fromInt sides, String.fromFloat radius]
        ++ defaultFill tabs2 shapeInfo.fillColour
        |> formatList tabs2
    Text str size ->
      ["text", "\"" ++ str  ++ "\""]
        |> addToEnd ["\n", (getTabs tabs2), "|>", "size", String.fromFloat size]
        |> addToEnd ["\n", (getTabs tabs2), "|>", "alignLeft"]
        |> addToEnd ["\n", (getTabs tabs2), "|>", "filled", "black"]
        |> formatList tabs2
    Group groupedShapes ->
      convertShapesToCode CombToGroup (tabs2 + 1) groupedShapes ++ "\n"
    Union unionedShapes ->
      convertShapesToCode CombToUnion (tabs2 + 1) unionedShapes ++ "\n"
    )
    ++ 
    shapePropertiesCode (tabs2 + 1) shapeType shapeInfo

formatList: Int -> List String -> String
formatList tabs4 list = 
    (List.intersperse " " list
      |> List.foldr (++) ""
      |> (++) (getTabs tabs4))
    ++ "\n"

convertShapesToCode: CombineType -> Int -> List (ShapeType, ShapeInfo) -> String
convertShapesToCode combineType tabs shapeDatas =
  (case combineType of 
    CombToGroup ->
      ([getTabs tabs, "group", "\n", getTabs tabs, "["]
          |> List.foldr (++) "")
    CombToUnion -> 
      ([getTabs tabs, "List.foldr union (rect 0 0 |> ghost)", "\n", getTabs tabs, "["]
        |> List.foldr (++) ""))
    ++
    (List.map (shapeCode (tabs + 1)) shapeDatas
      |> List.intersperse ("\n" ++ (getTabs (tabs + 1)) ++ ",\n")
      |> List.foldr (++) ""
      |> (++) "\n" 
      |> (++) (getTabs tabs))
     ++ "\n" ++ (getTabs tabs) ++ "]"