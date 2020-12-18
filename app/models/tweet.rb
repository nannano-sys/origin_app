class Tweet < ApplicationRecord

  with_options presence: true do
  validates :title, presence:{message: "が空欄では投稿できません"}
  validates :content, presence:{message: "が空欄では投稿できません"},length: {maximum:500, message: "ander 1000!"}
  end

  belongs_to :user
  has_many :comments, dependent: :destroy
  # has_many_attached :image 複数のファイルを各レコードと紐付ける記述
end