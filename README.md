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










