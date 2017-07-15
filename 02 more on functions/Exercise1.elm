module Main exposing (..)

import Html
import String


(~=) str1 str2 =
    let
        stringOne =
            str1 |> String.slice 0 1

        stringTwo =
            str2 |> String.slice 0 1
    in
    stringOne |> String.startsWith stringTwo


stringStartsWith =
    "chase" ~= "chase"


main =
    stringStartsWith
        |> toString
        |> Html.text
