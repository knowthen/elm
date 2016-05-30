module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App


-- model


type alias Model =
    Int


initModel : Model
initModel =
    0



-- update


type Msg
    = AddCalorie


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddCalorie ->
            model + 1



-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 []
            [ text ("Total Calories: " ++ (toString model)) ]
        , button
            [ type' "button"
            , onClick AddCalorie
            ]
            [ text "Add" ]
        ]


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }
