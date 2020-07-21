class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:info] = ['The user was saved succesfully.']
      redirect_to sign_in_path
    else
      flash[:info] = @user.errors.full_messages
      render :new
    end
  end
  
  def show
    
    user = User.find_by(id: params[:id])
    if user
      @attend_events = user.attended_event
      @events = user.events
      @previous_events = user.attended_event.where("date < (?) ", Date.today )
      @upcoming_events = user.attended_event.where("date >= (?)", Date.today )
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
