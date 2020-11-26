class Relationship < ApplicationRecord
  #followingモデルやfollowerモデルはないので、class_nameでUserモデルであることを明示する。これで、存在しないテーブルを検索することを防ぐ
  belongs_to :following, class_name: "User"
  belongs_to :follower, class_name: "User"

  validates :following_id, presence: true
  validates :follower_id, presence: true
end