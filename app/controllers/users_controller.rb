class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:info] = ['The user was saved succesfully.']
      redirect_to new_user_path
    else
      flash[:info] = @user.errors.full_messages
      render :new
    end
  end
  
  def show
    
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
