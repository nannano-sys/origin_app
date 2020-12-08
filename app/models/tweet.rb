class Tweet < ApplicationRecord

  with_options presence: true do
  validates :content, presence:{message: "cant be blank!"}
  validates :title, presence:{message: "cant be blank!"}, length: {maximum:500, message: "ander 1000!"}
  end

  belongs_to :user
  has_many :comments, dependent: :destroy
end
