module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Html.App as App
import String


-- model


type alias Model =
    { calories : Int, input : Int }


initModel : Model
initModel =
    { calories = 0, input = 0 }



-- update


type Msg
    = AddMeal
    | Input String
    | Clear


update : Msg -> Model -> Model
update msg model =
    case msg of
        AddMeal ->
            { model
                | calories = model.calories + model.input
                , input = 0
            }

        Input val ->
            case String.toInt val of
                Ok input ->
                    { model | input = input }

                Err err ->
                    model

        Clear ->
            initModel



-- view


view : Model -> Html Msg
view model =
    div []
        [ h3 [] [ text ("Total Calories: " ++ (toString model.calories)) ]
        , input
            [ type' "text"
            , onInput Input
            , value
                (if model.input == 0 then
                    ""
                 else
                    toString model.input
                )
            ]
            []
        , button
            [ type' "button"
            , onClick AddMeal
            ]
            [ text "Add" ]
        , button
            [ type' "button"
            , onClick Clear
            ]
            [ text "Clear" ]
        , p [] [ text (toString model) ]
        ]


main : Program Never
main =
    App.beginnerProgram
        { model = initModel
        , update = update
        , view = view
        }
