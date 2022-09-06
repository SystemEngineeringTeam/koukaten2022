## 開き方
最初に`frontend`の中で`npm i`でモジュールを読み込んでください。
`npm start`でdevServerを起動します。
`npm run dev`, `npm run prod`で`dist`内にファイルを出力します。`dev`だとソースマップがつきます。

## HTMLファイルの追加について
新規でHTMLファイルを追加するときは、`src`直下にhtmlファイルを置き、`src/js`直下に同名のjsまたはtsファイルを置いてください。勝手にlinkタグを付け足すのでhtmlからこのjsファイルを読み込む必要はありません。
