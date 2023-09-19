module ShapeCreator exposing (..)

import GraphicSVG exposing (..)
import GraphicSVG.EllieApp exposing (..)

import KeyFunctions exposing (..)

type ShapeType = Rect 
  |  Oval 
  |  Ngon 

type Action = Dragging
  | None

--type EditAction = ColorChange

type alias UserShape = {shapeType : ShapeType, id: Int, isSelected: Bool, shape : Shape Msg} 
type alias MouseState = ((Float, Float), Bool) --x, y, isClicked

colors = [ red, orange, yellow, green, blue, darkBlue, purple, grey, black, white]
numberKeys = [ Key "0", Key "1", Key "2", Key "3", Key "4", Key "5", Key "6", Key "7", Key "8", Key "9" ]

selectedOutlineType = solid 1
selectedOutlineColour = green
xOffset = -110
maxUndoSteps = 100

--Id -1 = background
--Id -2 = Shape Creators 
addNonUserShapeCallbacks: Model -> Int -> Shape Msg -> Shape Msg
addNonUserShapeCallbacks model id shape =
  notifyMouseMoveAt MouseMove shape
    |> (
    if Tuple.second model.mouseState then
      notifyMouseUpAt (MouseUpAtShape id)
    else 
      notifyMouseDownAt (MouseDownAtShape id)
    )
  
baseRect = 
    roundedRect 19 9 0
       |> filled red
       |> addOutline (solid 1) black
       |> move (xOffset, 45)
   
baseNgon = 
    ngon 5 9
       |> filled red
       |> addOutline (solid 1) black
       |> move (xOffset, 10)

baseOval = 
    oval 19 9
       |> filled red
       |> addOutline (solid 1) black
       |> move (xOffset, 30)
       
backgroundHitbox = 
    rect 1000 500
    |> filled blank

myShapes: Model -> List (Shape Msg)
myShapes model = 
  [
    backgroundHitbox
    |> addNonUserShapeCallbacks model -1
    ,
    baseRect
      |> notifyMouseDown (CreateShape baseRect Rect)
      |> addNonUserShapeCallbacks model -2
    ,
    baseOval
      |> notifyMouseDown (CreateShape baseOval Oval)
      |> addNonUserShapeCallbacks model -2
    ,
    baseNgon
      |> notifyMouseDown (CreateShape baseNgon Ngon)
      |> addNonUserShapeCallbacks model -2
  ]
  ++ 
  ((--Non Outlined Shapes
      List.filter (shapeNotSelected model) model.userShapes
      |> (
        if Tuple.second model.mouseState then
           List.map (addCallBackWithId notifyMouseUpAt MouseUpAtShape)
         else
           List.map (addCallBackWithId notifyMouseDownAt MouseDownAtShape)
         )
      )
    ++
      (--Outlined Shapes 
      List.filter (shapeSelected model) model.userShapes
      |> (
        if Tuple.second model.mouseState then
           List.map (addCallBackWithId notifyMouseUpAt MouseUpAtShape)
         else
           List.map (addCallBackWithId notifyMouseDownAt MouseDownAtShape)
         )
      |> List.map (addOutline selectedOutlineType selectedOutlineColour)
   ))
   
addCallBackWithId: (((Float, Float) -> Msg) -> Shape Msg -> Shape Msg) -> (Int -> (Float, Float) -> Msg) -> UserShape -> Shape Msg
addCallBackWithId callback msg shape = callback (msg shape.id) shape.shape

shapeSelected: Model -> UserShape -> Bool
shapeSelected model shape = 
  List.member (shape.id) model.selectedShapes

shapeNotSelected: Model -> UserShape -> Bool
shapeNotSelected model shape = 
  not (shapeSelected model shape)

positionChange: (Float, Float) -> (Float, Float) -> (Float, Float)
positionChange (x1, y1) (x2, y2) = (x2 - x1, y2 - y1)

moveShape: (Float, Float) -> UserShape -> UserShape
moveShape moveAmount shape =
  {shape | shape = move moveAmount shape.shape}

changeShapeColor: Color -> UserShape -> UserShape
changeShapeColor newColor shape =
  {shape | shape = repaint newColor shape.shape }

colorShapeList: Color -> List UserShape -> List UserShape
colorShapeList newColor shapes = 
  List.map (changeShapeColor newColor) shapes

defaultKeyboardInfo: Keys -> KeyState
defaultKeyboardInfo key = Up 

makeModelInfo: Model -> ModelInfo     --Reset mouse data, keyboard data, action to avoid glitches
makeModelInfo model = modelToInfo ({model | time = 0, mouseState = ((0,0), False), keyboardInfo = defaultKeyboardInfo, currentAction = None })

--In order to undo later
addModelToPrevModels: Model -> List ModelInfo
addModelToPrevModels model = 
   case List.head model.prevModels of
     Just mostRecentPrevModel ->
       if mostRecentPrevModel == makeModelInfo model then
         model.prevModels
       else
         List.take maxUndoSteps model.prevModels
         |> (::) (makeModelInfo model)
     Nothing ->
         List.take maxUndoSteps model.prevModels
         |> (::) (makeModelInfo model)
   
{-   if makeModelInfo model == (List.head model.prevModels) then --(these three lines break the code, idk why)
     model.prevModels                                            -- Maybe some kind of infinite recursive call
   else
     makeModelInfo model :: model.prevModels -}
     
-- Add messages here
type Msg = Tick Float GetKeyState
  |  CreateShape (Shape Msg) ShapeType
--  |  BackgroundClick 
--  |  SelectShape Int 
--  |  MouseDownAt (Float, Float)
  |  MouseDownAtShape Int (Float, Float)
  |  MouseMove (Float, Float) 
  |  MouseUpAtShape Int (Float, Float)

-- Your update function goes here
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model = 
  case msg of
    Tick t (getKeyStates, _, _)
      -> ( 
            -- Undo
            if keyPressed getKeyStates Ctrl && getKeyStates (Key "z") == JustDown then
              case List.head model.prevModels of 
                Nothing ->
                  model
                Just modelInfo ->
                  modelFromInfo modelInfo (List.drop 1 model.prevModels)
            else
              --Delete
                if anyKeyPressed [Delete, Backspace] getKeyStates then
                  { model | time = t, keyboardInfo = getKeyStates, prevModels = addModelToPrevModels model, 
                  userShapes = 
                    List.filter (shapeNotSelected model) model.userShapes }
              --Change colour
                else if anyKeyPressed numberKeys getKeyStates then
                { model | time = t, keyboardInfo = getKeyStates, prevModels = addModelToPrevModels model, 
                  userShapes =
                  List.filter (shapeSelected model) model.userShapes
                  |> colorShapeList (
                    List.drop (getKeyPressedFromList numberKeys getKeyStates) colors
                    |> List.head
                    |> Maybe.withDefault red
                    )
                  |> (++) (List.filter (shapeNotSelected model) model.userShapes) }
                else
                  { model | time = t, keyboardInfo = getKeyStates }
             , Cmd.none )
    CreateShape shape shapeType
      -> ( { model | 
              userShapes = 
                  notifyMouseMoveAt MouseMove shape
                  |> UserShape shapeType model.currentShapeID False 
                  |> List.singleton
                  |> (++) model.userShapes
              ,
              currentShapeID = model.currentShapeID + 1 
              ,
              selectedShapes = [model.currentShapeID]
              ,
              currentAction = Dragging
              ,
              prevModels = addModelToPrevModels model
              }
            , Cmd.none)
    MouseDownAtShape id point ->
        ({ model |
             selectedShapes =
               if id >= 0 then
                 if keyPressed model.keyboardInfo Shift then
                   id :: model.selectedShapes 
                 else 
                   [id]
               else if id == -2 then
                 model.selectedShapes
               else
                 []
             ,
             currentAction = 
             --This requires you to click a shape a second time to drag it
             --Replace with id >= 0 to remove this requirement
               if {- List.member id model.selectedShapes -} id >= 0 || id == -2 then
                 Dragging
               else
                 None
             ,
             prevModels = addModelToPrevModels model
             ,
             mouseState = (point, True)}
         , Cmd.none )
    MouseMove point ->
       ({ model |
           userShapes = 
             if Tuple.second model.mouseState && model.currentAction == Dragging then
               --Move Selected Shapes
               List.filter (shapeSelected model) model.userShapes
               |> List.map (moveShape (positionChange (Tuple.first model.mouseState) point))
               |> (++) (List.filter (shapeNotSelected model) model.userShapes)
             else
               model.userShapes 
           ,
           mouseState = (point, Tuple.second model.mouseState)}
       , Cmd.none )
    MouseUpAtShape _ point ->
       ({ model |
           mouseState = (point, False),
           currentAction = None,
           prevModels = addModelToPrevModels model
        } 
       , Cmd.none )

-- This is the type of your model
type alias Model = { time : Float,
                     currentShapeID : Int,
                     userShapes : List (UserShape),
                     keyboardInfo : (Keys -> KeyState),
                     selectedShapes : List Int,
                     mouseState : MouseState,
                     currentAction : Action,
                     prevModels : List ModelInfo}

--Needed for undo feature
type alias ModelInfo = { time : Float,
                         currentShapeID : Int,
                         userShapes : List (UserShape),
                         keyboardInfo : (Keys -> KeyState),
                         selectedShapes : List Int,
                         mouseState : MouseState,
                         currentAction : Action}

modelFromInfo: ModelInfo -> List ModelInfo -> Model
modelFromInfo modelInfo prevModels = 
  Model modelInfo.time modelInfo.currentShapeID modelInfo.userShapes modelInfo.keyboardInfo modelInfo.selectedShapes modelInfo.mouseState modelInfo.currentAction prevModels

modelToInfo: Model -> ModelInfo
modelToInfo model = 
  ModelInfo model.time model.currentShapeID model.userShapes model.keyboardInfo model.selectedShapes model.mouseState model.currentAction

-- Your initial model goes here
init : Model
init = { time = 0, currentShapeID = 0, userShapes = [], keyboardInfo = defaultKeyboardInfo, selectedShapes = [], mouseState = ((0, 0), False), currentAction = None, prevModels = [] }

-- Your subscriptions go here
subscriptions : Model -> Sub Msg
subscriptions model = Sub.none

-- Your main function goes here
main : EllieAppWithTick () Model Msg
main = 
  ellieAppWithTick Tick 
    { init = \flags -> (init, Cmd.none)
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- You view function goes here
view : Model -> { title: String, body : Collage Msg }
view model = 
  {
    title = "Shape Creator v0.3"
  , body = collage 250 140 (myShapes model)
  }

