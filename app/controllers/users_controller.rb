class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets.all
  end

  def follows
    @user = User.find(params[:id])
    @users = @user.followings #自分がフォローしているユーザー情報を取得し、@usersというインスタンスに格納している
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers #自分がフォローされているユーザー情報を取得し、@usersというインスタンスに格納している
  end
end
