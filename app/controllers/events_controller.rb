class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      flash[:info] = ['The user was saved succesfully.']
      redirect_to events_path
    else
      flash[:info] = @event.errors.full_messages
      render :new
    end
  end

  def index
    @events = Event.all
  end

  def show
    @events = Event.find_by()
  end

  private
 
  def event_params
    params.require(:event).permit(:date, :title)
  end
end