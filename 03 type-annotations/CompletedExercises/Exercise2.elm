module Main exposing (..)

import Html


type alias Item =
    { name : String
    , freeQty : Int
    , qty : Int
    }


cart : List Item
cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    ]


free : Int -> Int -> Item -> Item
free minQty freeQty item =
    if item.freeQty == 0 && minQty > 0 then
        { item | freeQty = item.qty // minQty * freeQty }
    else
        item


main : Html.Html msg
main =
    List.map ((free 10 3) >> (free 5 1)) cart
        |> toString
        |> Html.text
