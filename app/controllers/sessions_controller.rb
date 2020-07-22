class SessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create delete]

  def new
    redirect_to user_path(current_user) if current_user
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:danger] = 'User not found. Try again.'
      render 'new'
    end
  end

  def delete
    session.delete(:user_id)
    @current_user = nil
    redirect_to sign_in_path
  end
end
