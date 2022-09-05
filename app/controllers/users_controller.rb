class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  # あるユーザーがフォローしている人全員を取得するアクション
  def followings
    user = User.find(params[:id])
    @users = user.followings
  end

  # あるユーザーをフォローしている人全員を取得するアクション
  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end
end
