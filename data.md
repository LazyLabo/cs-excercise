# チャレンジ１ 買い物リストのデータに作ろう

週末にキャンプに行くことになったので、学校の帰りに町に行って買い物することになりました。

買う予定のアイテムは、スニーカー、LED懐中電灯、Tシャツ、の３つです。

これらのアイテムを紙に書きだすとしたら、下のように３行に分けることになるでしょう。

- スニーカー
- LED懐中電灯
- Tシャツ

一般的にはこれを「買い物リスト」と呼んだりしますね。そして「買い物リスト」を持って買い物に出かけて、次にどれを買うかとか、すでに買ったものはどれかとか、そういう風にチェックしながらお店をまわると思いますがどうでしょうか？

このような「アイテムをリストとして表した情報」はコンピュータでも簡単に処理することが出来ます。このエクササイズでは買い物リストを「データ」と呼ばれるデジタル情報として表して、買い物がより簡単で正確に進められるようにします。

ではまず、この買い物リストの情報をコンピュータで処理出来るような状態に加工してみましょう。

## 実際にやってみよう！

JavaScriptの書き方で「買い物リスト」をデータとして表します。とりあえず以下のコードをブラウザの開発者向けツールのコンソールに、そのままコピペしてみましょう。コピペが出来たら、Enterキーを押します。

```javascript
var list = ["スニーカー", "LED懐中電灯", "Tシャツ"]
```

次に、```list``` と打ち込んで もう一度Enter キーを押してみましょう。
```javascript
list
```

どのような値が返ってきましたか？

## ふりかえり

### ポイント１：データには名前を付ける

データは通常、それが何を表すかを示す名前を付けます。この場合は```list```と名付けましたが、名前は分かりやすければ何でもいいです（例：```items```）

### ポイント２：データは複数のアイテムをひとまとまりとして表します

```list```と名付けられたデータは複数のアイテムをひとまとまりとして表しています。多くの場合、データはいくつかの似通ったアイテムをひとまとまりにして表します。この場合は買うアイテムが３つだったので、この３つ全体を指して```list```と名付けられたデータを作りました。

JavaScriptではブラケット```[]```を使って複数のアイテムをひとまとまりのリストとして表します。他のプログラミング言語では異なる記号を使うかもしれませんが、ほとんどのプログラミング言語でこのようにリストとして記述する方法があります。

JavaScriptのブラケット表記では、カンマ```,```を使ってアイテムを区切っています。やはり、他のプログラミング言語では他の記号を使うかもしれませんが、カンマはとても一般的な「アイテムの区切りを示す記号」です。

データをリストなどの「アイテムのまとまり」として表した時、ひとつひとつのアイテムを*要素（element)*と呼ぶことが一般的です。次にアイテム（要素）を取り扱うコードを書いてみましょう。

# チャレンジ２　どのアイテムを買ったか記録しよう

街で買い物を始めましたが、どれをすでに買ったか、どれをまだ買っていないか、分かるようにしたいです。

*買った* という事実を ```purchased```という名前の情報としてデータの一部に保存できるようにしましょう。

## 実際にやってみよう！

買い物リストのデータ ```list``` を改造して、それぞれのアイテムが購入済みがどうかを表す ```purchased```という*プロパティー（属性）* を加えます。

> *property* は *attribute* や *field* という呼ぶ場合もあります。どちらにしろ、それぞれの「アイテムに関する詳しい情報」を表します。 

下のコードは少し長いのでコピペ入力するといいでしょう。コピペ入力が終わったら、再度 ```list``` と打ち込んで、返ってくる値を調べて見ましょう。

```javascript
var list = [
  {
    name: "スニーカー",
    purchased: false
  }, 
  {
    name: "LED懐中電灯",
    purchased: false
  }, 
  {
    name: "Tシャツ",
    purchased: false
  }]
```

## ふりかえり

### ポイント１：各アイテムの構造が少しだけ複雑になりました

チャレンジ１では、データは下のようにごく簡単なリスト構造でしたね。

```javascript
var list = ["スニーカー", "LED懐中電灯", "Tシャツ"]
```

ですが、チャレンジ２ではブラケット```[]```の中にある内容がブレース```{}```で囲まれた、ちょっと複雑な構造になりました。

そのうちのひとつ、最初のスニーカーのアイテムを取り出して、よく見てみましょう。

```javascript
{
    name: "スニーカー",
    purchased: false
}
```

### ポイント２： アイテムには２つのプロパティを加えました

ブレースの中身を1行に書き換えて見てみると、カンマ```,```で区切られた「名前と値」のペアがリストになっているのが分かります。

```javascript
{ name: "スニーカー", purchased: false }
```

これは２つのプロパティーがあるということを表しています。「名前」と「値」は「：」記号で結ばれています。日本語で表すとこうなります。

- 名前："スニーカー" 
- 購入済：いいえ

プロパティの数が多いほど、それぞれのアイテムに関する詳しい情報があるということです。今のところは「買ったか・買っていないか」だけ表せればいいでしょう。

# チャレンジ３　インスタントラーメンも買わないといけないことを思い出した！

買い物の途中に、キャンプ場で食べるインスタントラーメンを買わなくてはいけないことを思い出しました。この新しい情報を、今すでにあるデータに反映させるにはどうしたらいいでしょうか？

## 実際にやってみよう！

```list``` にインスタントラーメンを表すアイテムを加えましょう。

```push```という名前の関数を使って、すでにあるリストに、新たにアイテムを加えることが出来ます。

コピペするか、実際にコーディングしてみよう。

```javascript
list.push({ name: "インスタントラーメン", purchased: false })
```

新規アイテムを加えたら、```list``` の内容を確認してみよう。ちゃんとインスタントラーメンを表すアイテムはありますか？そのアイテムはどこに加えられましたか？

## ふりかえり

### ポイント１：新しいアイテムはリストの後ろに加えられました

これは```push```という関数が「そのようにふるまう」からそうなっただけです。リストの先頭に加えたり、リストの途中に加えたりする方法もありますが、それは別の機会に勉強しましょう。大切なのは、リストのどこに加えるかはプログラマーが決めることが出来るということです。

### ポイント2：リストのアイテムは同じ形（構造）にします

データをまとめる時はそれぞれのアイテムはできるだけ同じ形（構造）になるようにすることが多いです。なぜなら、そもそもひとまとまりのデータは「同じようなアイテム」の集まりであるし、データを処理する際もアイテムの形が似ている方がより簡単に処理できるからです。

とくにプロパティの名前と、そのプロパティの値の種類はみんな揃うように注意するといいでしょう。なぜなら、意味としては同じであったとしてもプロパティーの名前が違うとコンピュータで処理するときに面倒が起こるからです。例えば下は例では「名前」を表すプロパティに```title```という文字を、「購入済」を表す代わりに「購入予定」を表す```needToBuy```という文字を使っています。今回の ```list``` データとはとても相性が悪いデータの形です

```javascript
list.push({ title: "インスタントラーメン", needToBuy: false })
```

これは処理がとても面倒になるのでやってはいけない例です。（実は形が全然違うアイテムをひとまとまりにするテクニックもあります。その方が都合がいい場合があるからです。今回のエクササイズではそのようなデータは扱いません。）　

### ポイント２：データは増やしたり減らしたりできる

データは多くの場合、現実の世界の状態を表します。そして現実の世界はころころと変化していきますね。なので、データもそれに合わせて変えていく必要があります。今回は増やす方法を見ましたが、減らしたり、さらには順番を変えたりすることもプログラミングで行います。順番を変えるという作業は「並び替えアルゴリズム（ソートアルゴリズム）」と呼ばれる手順で行います。別の機会に見てみましょう。

# チャレンジ４　スニーカーを購入したので記録しよう！

買い物はさらに続いて、たった今靴屋さんでスニーカーを買いました。スニーカーはアイテムとしてすでにデータとして記録していますが、まだ購入済にはなっていません。　```list```データを更新して、スニーカーを購入済にしましょう。

## 実際にやってみよう！

```list```データは４つのアイテムを含んでいましたね。そのうちの１つのデータだけを更新するためには、まずそのアイテムを指定できないといけません。

ブラケット```[]```に位置を示す数字（*インデックス*と呼びます）を指定すると、個別のアイテムを選ぶことができます。

コピペするか、実際にコーディングしてみよう。

```javascript
list[0].purchased = true
```

## 振り返り

### ポイント１： リストの要素は左から順に格納されている

JavaScriptでは、ブラケット```[]```を使ってアイテムをリストとして扱う時、個々のアイテム（要素）は左から順番に並んでいます。

これは数学で習う「集合」と異なることに注意しましょう。集合には順番はありません。例えば ```{a, b, c}``` は ```{b, c, a}``` と表してもいいし、```{c, b, a}``` でもいいです。ですが、JavaScriptでブラケット```[]```を使ってリストにすると、要素の順番は固定されます。つまり1個目の要素、２個目の要素、３個目の要素、といった扱い方が出来るのです。

```list```は今のところ下のようになっています。

1個目： スニーカー
2個目： LED懐中電灯
3個目： Tシャツ
4個目： インスタントラーメン

### ポイント２： 個々のアイテムを指すにはインデックスという数字を使う、それは*1*ではなく*0*から始まる！

私たちはものを数える時、１、２、３、・・・と数えますね。しかし、コンピュータで数えるときは、０、１、２、・・・と数えます。なぜかというと、コンピュータは「０と１」で全ての情報を表すので「まずは０から」が自然なのです。０から数えるのは最初は変な感じがしますが、慣れるとむしろその方がプログラミングをする上では自然になります。

```list[0]``` は１個目のアイテム、つまり

```javascript
{
    name: "スニーカー",
    purchased: false
}
```

を表します。

（２個目、３個目、そして４個目の要素を指すにはどんなインデックスを使えばよいか考えてみましょう。）

### ポイント３： アイテムの特定のプロパティはドット```.```を使って指定する

購入済という状態を表すには```purchased```という名前のプロパティを ``` purchased: true``` の状態に変更します。

変更するにはイコール記号```=```で表す「値を代入する」という操作を行いました。このようなある動作を行う記号を「オペレータ」と呼びます。この```=```オペレータの場合は、```=```の右側の値が、```=```の左側に代入されます。

```javascript
list[0].purchased = true
```

このコードが実行された後、スニーカーのアイテムが購入済になっているかどうか、そのアイテムをインデックス＝０を使って表示して確認しましょう。

```javascript
> list[0]
```

ちゃんと``` purchased: true``` になっていましたか？


# チャレンジ５　購入金額を記録しよう！

キャンプのための買い物はインスタントラーメン以外は終わりました。

- スニーカー 3,000 円
- LED懐中電灯　800 円
- Tシャツ　1,000 円
- インスタントラーメン　（未購入）

どれにいくら使ったかが分かるように、購入済のアイテムについては、それぞれの金額を記録することにしました。

```list```を以下のように更新します。

上の購入情報を元に、インスタントラーメン以外の３つのアイテムを購入済にして、さらにそれぞれに ```cost``` という新しいプロパティを加え、購入金額を入れましょう。インスタントラーメンに関しては、まだ未購入の状態なので値は0（ゼロ）でいいです。

## 実際にやってみよう！

安心してください！コピー＆ペイストでやっていいです！細かい内容はこれから少しずつ分解しながら理解していきます。

```javascript
list = [
  {
    name: "スニーカー",
    purchased: true,
    cost: 3000
  }, 
  {
    name: "LED懐中電灯",
    purchased: true,
    cost: 800
  }, 
  {
    name: "Tシャツ",
    purchased: true,
    cost: 1000
  },
  {
    name: "インスタントラーメン",
    purchased: false,
    cost: 0
  }]
```

