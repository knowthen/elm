module Main exposing (..)

import Html


cart =
    [ { name = "Lemon", qty = 1, freeQty = 0 }
    , { name = "Apple", qty = 5, freeQty = 0 }
    , { name = "Pear", qty = 10, freeQty = 0 }
    , { name = "Banana", qty = 20, freeQty = 0 }
    ]


free item =
  if item.qty >= 10 && item.freeQty == 0 then
    {item | freeQty = 3}
  else if item.qty >= 5 && item.freeQty == 0 then
    {item | freeQty = 1}
  else
    item

main =
    List.map free cart
    |> toString
    |> Html.text

