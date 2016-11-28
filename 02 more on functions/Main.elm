module Main exposing (..)

import Html


add a b =
    a + b


(~+) a b =
    a + b + 0.1


result =
    -- 1 ~+ 2
    (~+) 1 2


main =
    Html.text (toString result)
