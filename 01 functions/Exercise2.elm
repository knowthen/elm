module Main exposing (..)

import Html
import String


capitalizeName name =
    let
        nameLength =
            name
                |> String.length

        nameAndLength name nameLength =
            name
                ++ " - name length: "
                ++ toString nameLength
    in
    if nameLength > 10 then
        nameAndLength (name |> String.toUpper) nameLength
    else
        nameAndLength name nameLength


main =
    Html.text ("chase pursley" |> capitalizeName)
