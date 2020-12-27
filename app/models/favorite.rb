class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates_uniqueness_of :tweet_id, scope: :user_id  #tweet_idとuser_idが一組になるようなユニーク規制
end
