module Main exposing (..)

import Browser
import Html
import Html.Styled exposing (Attribute, Html, button, div, form, input, text, toUnstyled)
import Html.Styled.Attributes exposing (placeholder, style, value)
import Html.Styled.Events exposing (onClick, onInput, onSubmit)
import Model exposing (..)
import Msg exposing (..)
import Style exposing (..)
import View exposing (view)


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view >> toUnstyled
        }


init : Model
init =
    Model 0 "Hello World!" "Hello World!"


incChar c =
    Char.fromCode (Char.toCode c + 1)


decChar c =
    Char.fromCode (Char.toCode c - 1)


incString s =
    String.fromList (List.map incChar (String.toList s))


decString s =
    String.fromList (List.map decChar (String.toList s))


update : Msg -> Model -> Model
update msg model =
    case msg of
        Plus ->
            Model (model.n + 1) model.i (incString model.s)

        Minus ->
            Model (model.n - 1) model.i (decString model.s)

        Input str ->
            Model 0 str model.s

        Immediate ->
            Model 0 model.i model.i


type alias FormMsg =
    { form1 : String }
