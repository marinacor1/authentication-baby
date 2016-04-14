class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:sesssions][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to @user 
    else
    end
  end
end
