class Tweet < ApplicationRecord

  with_options presence: true do
  validates :title, presence:{message: "が空欄では投稿できません"}
  validates :content, presence:{message: "が空欄では投稿できません"},length: {maximum:500, message: "ander 1000!"}
  end

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
end