class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  has_many :comments
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationshios, class_name: 'Relationship', foreign_key: :follow_id
  has_many :followers, through: :reverse_of_relationshios, source: :user
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  def follow(other_user)
    unless selfe == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include(other_user)
  end
  
end
