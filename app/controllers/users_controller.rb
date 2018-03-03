class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    puts ">>>>> >>>> >>>> #{params}"
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
      user.save
      redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password_digest)
  end


end