module Main exposing (..)

import Html
import String


wordCount =
    String.words >> List.length


main =
    "Here is a test sentence"
        |> wordCount
        |> toString
        |> Html.text
