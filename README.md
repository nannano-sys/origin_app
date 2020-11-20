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



## tweetsテーブル

| Column             | Type       | Options                          |
| ------------------ | ---------- | -------------------------------- |
| content            | string     | null: false                      |
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










