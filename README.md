# README

![ロゴ (1)](https://user-images.githubusercontent.com/72584707/102211710-58b53380-3f17-11eb-803f-0bb21c759cf1.jpg)




# アプリ名
トラベルノート



# 概要
・ツイート投稿(トラベルノートという名称で、タイトルとテキストを投稿します)
<br>
・コメント機能
<br>
・フォロー機能



# 本番環境

アプリURL
　https://origin-app-travel-note.herokuapp.com/

ログイン情報(テスト用)
<br>
・name: サンプル
<br>
・pass: 111111
<br>
・email: sample@sample.com


# 製作背景 (意図)
 "トラベルノート"とは、旅行記録をまとめるノートのことです。このサイトは、ユーザー一人一人の記録をトラベルノートのようにまとめ、それを共有できるサイトです。

・旅行好きのユーザのためのサイト
  <br>
　 自分が旅行好きということもありますが、同様に旅行が好きというユーザーのため、旅行情報を集
   める媒体を作ってみたいと思いました。

・ただの旅行情報の収集サイトではなく、ユーザー目線から情報にアプローチする手法をとる
  <br>
　 自分と年齢が近い、趣味が同じといったユーザーの旅行記録を収集できます。この方法で、ユーザ 
  ーがどういいった旅行を経験したのかという旅行記録　　を情報資源として、逆引きのように検索でき、自分の知らない新らたな発見につながると考えました。

ユーザーにとってワクワクするような発見ができるようお手伝いします！



# DEMO

## トップページ
<img width="1259" alt="f41a46897740c9d3cf0dd54f2ae3b3ff" src="https://user-images.githubusercontent.com/72584707/102202872-2ef60f80-3f0b-11eb-9a9b-f859957a5f28.png">
ログインしていない状態は、この画面が表示されます。


## ログインぺージ
<img width="1189" alt="8e35c8d084b0d9048baaaa0b4cd3f8f6" src="https://user-images.githubusercontent.com/72584707/102203249-b04da200-3f0b-11eb-83a6-841f16421444.png">
ログインページです。ちなみに、新規登録ページはオレンジ色です


## メインページ
<img width="1236" alt="main-page" src="https://user-images.githubusercontent.com/72584707/102585249-68b55900-414b-11eb-8182-be3e417b1e1b.png">
ユーザーが最初に訪れるページです。ユーザー一覧が表示されています。


## ユーザーページ
<img width="1251" alt="my-page" src="https://user-images.githubusercontent.com/72584707/102585280-79fe6580-414b-11eb-90d3-2736dba724e9.png">
ユーザーの詳細ページです。プロフィール編集、フォロー、トラベルノートの参照などは基本このページで行います

## ノート作成ページ
<img width="1252" alt="tweet-new" src="https://user-images.githubusercontent.com/72584707/102687389-1ef36e00-4232-11eb-8b47-74924de21ecb.png">
ノートを書くことができるページです。タイトルと本文は必須です。画像を添付することができますが、強制ではありません。

## ノート詳細ページ

<img width="1258" alt="note1" src="https://user-images.githubusercontent.com/72584707/102948044-471bef00-4508-11eb-8b10-3ca25cbbfd06.png">

<img width="1257" alt="tweet_show" src="https://user-images.githubusercontent.com/72584707/103165440-6645b400-485b-11eb-933b-996cfdde75f4.png">


トラベルノートの詳細ページです。罫線の表示されたノートのような見た目の背景に、記事が反映されます。このページではコメントや、ノートに対して「いいね」をすることができます。また、サイドバーにはユーザーのトラベルノート一覧が表示されています。画像の添付をすると、クリップで留めた写真のように表示され、トラベルノート感が倍増します。パスポートスタンプにはシドニーと書いありますが、気にしてはいけません。(素材の都合)



# 工夫したポイント

・サイトをカラフルにして、見た目を楽しく！
<br>
見る人を飽きさせ無いサイトにしようと決めており、デザインをカラフルにしたいと思っていました。様々なカラーを試しましたが、ビビットな色合いよりは、スッと目に入る優しい色の方が良いと考えました。パステル系の色で統一し、それでいて賑やかな色合いのサイトにできたと思います。

・ボタンに動的要素を加えて見た目を楽しく！
<br>
カーソルを合わせるとボタンの色が変わります。新規登録ボタンはオレンジに、ログインボタンは水色に設定し、視覚的動きを持たせて、サイトを訪れたユーザーに楽しい気分になってもらえるよう工夫しました。

・フォロー機能を実装！
<br>
気に入ったユーザーを容易に再訪問できるよう、フォロー機能を実装しました。フォローしたユーザーは自分のフォロワー一覧に表示され、いつでも訪問可能になります。また、フォローボタンはクリックするとフォロー解除ボタンに反転するため、フォロー解除も容易です。

・ユーザー情報を後から登録できる！
<br>
昔何かのSNSに登録する際、新規登録時に多くの情報を入力した経験があり、それが非常に手間で、途中で面倒になり登録をやめた経験がありました。このアプリではユーザーのプロフィールは後から登録するため、新規登録時に複数の情報を登録する必要はありません。

・エラーハンドリングの日本語化に成功！
<br>
railsでは、エラーメッセージはデフォルトで英語になっていますが、日本語で表記されるようにymlファイルをを編集しました。

・S3にファイルデータを保存するため、heroku上で画像が消えない！
<br>
heroku上に画像をあげた場合、24時間経過、もしくはデプロイをしたタイミングでデータが消えてしまします。これは、herokuのリポジトリがdynoという単位で管理されており、Freeプランだと一定時間経過後にdynoが再起動される仕様になっているためです。先起動されてしまうと、保存されているファイルデータは消えてしまします。
<br>
この問題を解決するために、AWSを利用したS3というクラウドストレージにファイルデータの保存先を変更。これにより、画像データが消えることはなくなりました。
<br>
・いいね機能を実装！
<br>
いいね機能実装により、ノートに対してより簡易的な反応をすることができます。


# 開発環境
　ruby on rails, MySQL, HTML, CSS


# 課題、今後実装予定の機能
・ユーザー削除機能
<br>
deviseを改造した際に省いたユーザー削除機能を復活します。 
<br>
・非同期通信での投稿
<br>
JavaScriptを用いて、Ajax環境を実現し、快適に使用できるよう改良します。
<br>
・いいね機能実装
<br>
トラベルノートにいいねができるいいね機能を実装します。


# DB設計

<img width="500" alt="er図" src="https://user-images.githubusercontent.com/72584707/103165426-136bfc80-485b-11eb-8307-4869970e9c76.png">




　








