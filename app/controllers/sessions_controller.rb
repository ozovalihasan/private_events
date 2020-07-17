class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      session[:user_id] = user.id
      redirect_to user
    else
      flash.now[:danger] = 'User not found. Try again.'
      render 'new'
    end
  end
end


