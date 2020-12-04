# README

## usersテーブル

| Column             | Type       | Options       |
| ------------------ | ---------- | ------------- |
| email              | string     | null: false   |
| encrypted_password | string     | null: false   |
| nickname           | string     | null: false   |
| prefecture         | integer    | null: false   |



### Association
- has_many : tweets
- has_many : comments
- has_many :active_relationships, class_name: "Relationship", foreign_key: "following_id", dependent: :destroy
- has_many :followings, through: :active_relationships, source: :follower
- has_many :passive_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
- has_many :followers, through: :passive_relationships, source: :following 



## tweetsテーブル

| Column             | Type       | Options                          |
| ------------------ | ---------- | -------------------------------- |
| content            | text       | null: false                      |
| user               | references | null: false, foreign_key: true   |

### Association
- belongs_to : user
- has_many   : comments




## commentsテーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------  |
| text               | text       | null: false                     |
| user               | references | null: false, foreign_key: true  |
| tweet              | references | null: false, foreign_key: true  |

### Association
- belongs_to : tweet
- belongs_to : user



## relationshipsテーブル

| Column             | Type       | Options                                     |
| ------------------ | ---------- | ------------------------------------------- |
| following          | integer    |                                             |
| follower           | integer    |                                             |

### Association
- belongs_to :following, class_name: "User"
- belongs_to :follower, class_name: "User"


```
アプリ名：トラベルノート
```

```
アプリケーション概要：ツイート(トラベルノート)、コメント、フォロー
```

```
テスト用アカウント：name:サンプル, pass 111111,  email: sam@sam.com
```

```
目指した課題解決 : 旅行好きな自分のために、旅行情報を集める媒体を作ってみたいと思ったため。また、ユーザー目線から情報にアプロ　　　　　　　　　　ーチする手法をとり、自分と年齢が近い、趣味が同じと言ったユーザーの旅行記録を収集できる。
```

```
洗い出した要件 ： ログイン、ログアウト機能があること、ツイート機能があること、コメント機能があること、フォロー機能があること、
                
```

```
実装した機能についての説明：
- 新規登録できる 
- ログインできる 
- ログアウトできる 
- トラベルノートを書くことができる。
- トラベルノートを書くと、ユーザーページにタイトルが表示される
- トラベルノートの詳細を確認できる。詳細ページでコメントをすることができる
- トラベルノートにコメントすると、ツイート詳細にてコメントが表示される 
- ツイートを削除できる 
- ユーザーの詳細がみれる 
- ユーザーをフォローできる 
- ユーザーのフォローを解除できる 
- フォローしているユーザー一覧を見ることができる 
- フォロワー一覧を見ることができる
```

```
実装予定の機能:
- 画像投稿機能
```



 









