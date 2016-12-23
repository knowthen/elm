module Main exposing (..)

import Html
import String


(~=) x y =
    String.left 1 x == String.left 1 y


main =
    "Austin"
        ~= "Anna"
        |> toString
        |> Html.text
