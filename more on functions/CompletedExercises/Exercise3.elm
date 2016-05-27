module Main exposing (..)

import Html
import String


(~=) a b =
    String.left 1 a == String.left 1 b


wordCount =
    String.words >> List.length


main =
    "Here is a test sentence"
        |> wordCount
        |> toString
        |> Html.text
