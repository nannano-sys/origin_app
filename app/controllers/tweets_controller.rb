class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content).merge(user_id: current_user.id)
  end
end
