module View exposing (view)

import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (placeholder, style, value)
import Html.Styled.Events exposing (onClick, onInput, onSubmit)
import Model exposing (..)
import Msg exposing (..)
import Style exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ form [ onSubmit Immediate, style "margin" "30px" ]
            [ dlform []
                [ dtlabel [] [ text "初期値" ]
                , ddinp [] [ input20px [ onInput Input, placeholder "初期値を入れてね" ] [] ]
                ]
            , orangebtn [] [ text "初期値として投入" ]
            ]
        , div [ style "font-size" "36px", style "margin" "10px" ] [ text model.s ]
        , blubtn [ onClick Minus ] [ text "減" ]
        , redbtn [ onClick Plus ] [ text "増" ]
        ]
