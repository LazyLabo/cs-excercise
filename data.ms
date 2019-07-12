# チャレンジ１ データをロードしてみよう

これからデータを扱う練習をします。とりあえず、架空の製品データを変数にロードしましょう。変数の名前は データの内容を示すように products にしてください。 

## ヒント

データの多くは「人間にとって意味のある」情報です。人間にとって意味のある情報はいろんな種類がありますよね（例： 名前、年齢、アカウント情報、コンサートチケットの予約、Amazonのカートの中身・・・などきりがないぐらいあります。
実験として「架空の製品データ」をロードします。

## 実際にやってみよう！

安心してください！コピー＆ペイストでやっていいです！細かい内容はこれから少しずつ分解しながら理解していきます。

```
var producst = [{
  "_id": {
    "$oid": "5968dd23fc13ae04d9000001"
  },
  "product_name": "sildenafil citrate",
  "supplier": "Wisozk Inc",
  "quantity": 261,
  "unit_cost": "$10.47"
}, {
  "_id": {
    "$oid": "5968dd23fc13ae04d9000002"
  },
  "product_name": "Mountain Juniperus ashei",
  "supplier": "Keebler-Hilpert",
  "quantity": 292,
  "unit_cost": "$8.74"
}, {
  "_id": {
    "$oid": "5968dd23fc13ae04d9000003"
  },
  "product_name": "Dextromathorphan HBr",
  "supplier": "Schmitt-Weissnat",
  "quantity": 211,
  "unit_cost": "$20.53"
}]
```

## ふりかえり

