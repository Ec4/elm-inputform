# 廃れゆくElm触っておいた

記録だけ残す

## インストール

Mac なので

```shell
brew install elm elm-format
```

## 開発記録

`elm reactor` を起動して `src/Main.elm` を編集しながらやっていく。
たまに `elm-format src/` すると良い。

## 生成

Elm のソースコードがいくつあっても、メインから import で辿っていけるなら、
いつでも以下のコマンド一発でOK。

```shell
elm make src/Main.elm --output elm.js
```

Elm の公式に index.html の作り方も書いてあるので、生成した js の使い方もすぐわかる。

## 感想

Elm は廃れかけてるとはいえ、`elm reactor` で開発するの楽しいのでやって良かった。

elm-css は面白くないし、ドキュメントも読みづらいので外部で書いた方が良い。
そのために生成物を直接 html に吐かずに js に吐くべき。

elm-format というか統一スタイルは好きになれなかったけど、
統一されていることはすごく良いことだと思った。
`elm reactor` からフォーマットも行えたらいいのになあ。

