module Main exposing (..)

import Html
import String


wordCount sentence =
    sentence
        |> String.words
        |> List.length


jackAndJill =
    """
    Jack and Jill went up the hill
    To fetch a pail of water
    Jack fell down and broke his crown,
    And Jill came tumbling after
    """


main =
    jackAndJill
        |> wordCount
        |> toString
        |> Html.text
