class FavoritesController < ApplicationController
  def index
    @tweet = Tweet.find(params[:tweet_id])
  end

  def create
    tweet = Tweet.find(params[:tweet_id])
    user = current_user
    favorote = Favorite.create(user_id: user.id, tweet_id: tweet.id)
    redirect_to tweet_path(tweet)
  end

  def destroy
    tweet = Tweet.find(params[:tweet_id])
    user = current_user
    favorote = Favorite.find_by(user_id: user.id, tweet_id: tweet.id)
    favorote.delete
    redirect_to tweet_path(tweet)
  end
end
