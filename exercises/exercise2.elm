module Main exposing (..)

import Html
import String


capitalize maxLength name =
    if String.length name > maxLength then
        String.toUpper name
    else
        name


main =
    let
        name =
            "Austin Kabiru"

        maxLength =
            10

        length =
            String.length name
    in
        (capitalize maxLength name)
            ++ " - name length: "
            ++ (toString length)
            |> Html.text
