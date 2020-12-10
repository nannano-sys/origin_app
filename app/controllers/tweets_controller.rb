class TweetsController < ApplicationController

  def index
    redirect_to new_tweet_path #更新でindexに戻るのを防ぐ
  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to user_path(@tweet.user)
    else
      render :new
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
    @user = @tweet.user
    @tweets = @user.tweets.all
    @comment = Comment.new
    @comments = @tweet.comments
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content, :title).merge(user_id: current_user.id)
  end
end
