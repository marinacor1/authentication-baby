class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_check)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
    end
  end

  def show
    @user = current_user
  end

  private

  def params_check
    params.require(:user).permit(:username, :password)
  end

end
