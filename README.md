# README

## usersテーブル

| Column             | Type       | Options       |
| ------------------ | ---------- | ------------- |
| email              | string     | null: false   |
| encrypted_password | string     | null: false   |
| nickname           | string     | null: false   |
| prefecture         | integer    | null: false   |
| city               | string     |               |


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
- has_many   : tweet_tags




## commentsテーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------  |
| text               | text       | null: false                     |
| user               | references | null: false, foreign_key: true  |
| tweet              | references | null: false, foreign_key: true  |

### Association
- belongs_to : tweet
- belongs_to : user


## tagsテーブル

| Column             | Type       | Options       |
| ------------------ | ---------- | ------------- |
| category           | string     |               |

### Association
- has_many : tweet_tags



## tweet_tagsテーブル

| Column             | Type       | Options                          |
| ------------------ | ---------- | -------------------------------- |
| tweet              | references | null: false, foreign_key: true   |
| tag                | references | null: false, foreign_key: true   |

### Association
- belongs_to : tweet
- belongs_to : tag


## relationshipsテーブル

| Column             | Type       | Options                                     |
| ------------------ | ---------- | ------------------------------------------- |
| following          | integer    |                                             |
| follower           | integer    |                                             |

### Association
- belongs_to :following, class_name: "User"
- belongs_to :follower, class_name: "User"

```
アプリ名：未定
```

```
アプリケーション概要：ツイート、コメント、フォロー
```

```
テスト用アカウント：name:サンプル, pass 111111,  email: sam@sam.com
```

```
目指した課題解決 : 旅行好きな自分のために、旅行情報を呟くためのTwitterのような物を作ってみたいと思ったため
```

```
洗い出した要件 ： ログイン、ログアウト機能があること、ツイート機能があること、コメント機能があること、フォロー機能があること、タグ機能があること(現段階では未実装)
```

```
実装した機能についてのGIFと説明：
- 新規登録できる https://gyazo.com/b913d9321c50a870c443e9a33b51b9ab
- ログインできる https://gyazo.com/6aaaa477a28b674da505f3a3d47c2694
- ログアウトできる https://gyazo.com/287054ec9380cee42a720c91cd0f9f7f
- ツイートフォームでツイートをすると、トップトップページに表示される。誰でも閲覧可能 https://gyazo.com/4e54d74ed56e427c1cc47785dbb88f57
- ツイートにコメントすると、ツイート詳細にてコメントが表示される https://gyazo.com/9245dd5972ccd5eca7fe98943615f464
- ツイートを削除できる
- ユーザーの詳細がみれる
- ユーザーをフォローできる
- ユーザーのフォローを解除できる
- フォローしているユーザー一覧を見ることができる
```

```
実装予定の機能:
- タグ機能
- いいね機能
```

```
データベース設計:

```

```
ローカルでの動作方法
```

 








