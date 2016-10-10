module Main exposing (..)

import Html
import String


wordCount =
    String.words >> List.length


main =
    "This is a sentence"
        |> wordCount
        |> toString
        |> Html.text
