module Main exposing (..)

import Html
import String


wordCount =
    String.words >> List.length


result =
    wordCount 1234


main =
    result
        |> wordCount
        |> toString
        |> Html.text
