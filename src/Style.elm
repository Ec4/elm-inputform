module Style exposing (..)

-- 今のところは全部出し

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css)


orange =
    hex "FF6622"


green =
    hex "44AA44"


red =
    hex "EE6688"


blue =
    hex "66AACC"


dlform =
    styled dl
        [ height (px 40)
        , width (px 300)
        , displayFlex
        , flexDirection row
        ]


dtlabel =
    styled dt
        [ backgroundColor green
        , color (hex "ffffff")
        , width (px 100)
        , margin (px 0)
        , fontSize (px 20)
        , textAlign center
        ]


ddinp =
    styled dd
        [ width (px 120)
        , margin (px 0)
        ]


input20px =
    styled input
        [ fontSize (px 20)
        ]


orangebtn =
    styled button
        [ backgroundColor orange
        , color (hex "ffffff")
        , height (px 50)
        , width (px 200)
        , fontSize (px 20)
        , textAlign center
        , flexDirection column
        ]


btn =
    let
        size =
            100
    in
    styled button
        [ fontSize (px (size * 0.5))
        , margin (px 30)
        , height (px size)
        , width (px size)
        , borderStyle none
        , borderRadius (px (size / 4))
        ]


redbtn =
    styled btn
        [ backgroundColor red
        , color (hex "ffffff")
        ]


blubtn =
    styled btn
        [ backgroundColor blue
        , color (hex "ffffff")
        ]
