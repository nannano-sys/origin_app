# README


## アプリ名
トラベルノート



## 概要
・ツイート投稿(トラベルノートという名称で、タイトルとテキストを投稿します)
・コメント機能
・フォロー機能



## 本番環境

アプリURL
　https://origin-app-travel-note.herokuapp.com/

ログイン情報(テスト用)
・name: サンプル　
・pass: 111111
・email: sam@sam.com


## 製作背景 (意図)
 トラベルノートとは、旅行記録をまとめるノートのことです。このサイトは、ユーザー一人一人の記録をトラベルノートのようにまとめ、それを共有できるサイトです。

# 旅行好きのユーザのためのサイト
　自分が旅行好きということもありますが、同様に旅行が好きというユーザーのため、旅行情報を集める媒体を作ってみたいと思いました。

# ただの旅行情報の収集サイトではなく、ユーザー目線から情報にアプローチする手法をとる
　自分と年齢が近い、趣味が同じといったユーザーの旅行記録を収集できます。この方法で、ユーザーがどういいった旅行を経験したのかという旅行記録　　を情報資源として、逆引きのように検索でき、自分の知らない新らたな発見につながると考えました。

## ユーザーにとってワクワクするような発見ができるようお手伝いします！



## DEMO
<img width="1259" alt="f41a46897740c9d3cf0dd54f2ae3b3ff" src="https://user-images.githubusercontent.com/72584707/102202872-2ef60f80-3f0b-11eb-9a9b-f859957a5f28.png">

ログインしていない状態は、この画面が表示されます。

![メインページ](https://gyazo.com/feed68c87c8949ea11e9eaa1a4f29d64)
ユーザーが最初に訪れるページです。ユーザー一覧が表示されています。

![ユーザーページ](https://gyazo.com/870f641032872dbfeb64284fffbd3213)
ユーザーの詳細ページです。プロフィール編集、フォロー、トラベルノートの参照などは基本このページで行います

![フォロー機能](https://gyazo.com/70e5cb7f2f96e4cdd3aad0f528cb3198)
ユーザをフォローすることができます。一度フォローすると、フォローボタンはフォロー解除ボタンにスイッチします。

![ノート詳細ページ](https://gyazo.com/8f347ac56775f2b6bac6a395913bea99)
トラベルノートの詳細ページです。コメントをすることができます。また、サイドバーにはユーザーのトラベルノート一覧が表示されています。



## 工夫したポイント

・サイトをカラフルにして、見た目をたのしく
　　見る人を飽きさせ無いサイトにしようと決めており、デザインをカラフルにしたいと思っていました。様々なカラーを試しましたが、ビビットな色合い　より、スッと目に入る優しい色の方が良いと考えました。パステル系の色で統一し、それでいて賑やかな色合いのサイトにできたと思います。

・ボタンに動的要素を加える
　カーソルを合わせるとボタンの色が変わります。新規登録ボタンはオレンジに、ログインボタンは水色に設定し、視覚的動きを持たせて、サイトを訪れたユーザーに楽しい気分になってもらえるよう工夫しました。

・フォロー機能を実装
　気に入ったユーザーを容易に再訪問できるよう、フォロー機能を実装しました。フォローしたユーザーは自分のフォロワー一覧に表示され、いつでも訪問可能になります。また、フォローボタンはクリックするとフォロー解除ボタンに反転するため、フォロー解除も容易です。

・ユーザー情報を後から登録できる
　昔何かのSNSに登録する際、新規登録時に多くの情報を入力した経験があり、それが非常に手間で、途中で面倒になり登録をやめた経験がありました。このアプリではユーザーのプロフィールは後から登録するため、新規登録時に複数の情報を登録する必要はありません。

・エラーハンドリングの日本語化
　　railsでは、エラーメッセージはデフォルトで英語になっていますが、日本語で表記されるようにymlファイルをを編集しました。



## 開発環境
　ruby on rails, MySQL, HTML, CSS


## 課題、今後実装予定の機能
・画像添付機能
　　投稿したトラベルノートや、ユーザーのプロフ画像として、画像を添付できる機能を実装します。
・非同期通信での投稿
　　JavaScriptを用いて、Ajax環境を実現し、快適に使用できるよう改良します。


## DB設計

![ER図](https://gyazo.com/8d3261aa8d6909ddd2999d1f3d90b830)


　








