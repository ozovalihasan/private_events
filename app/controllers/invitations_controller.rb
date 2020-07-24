class InvitationsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    user = User.find(params[:user_id])
    event.attendees << user
    redirect_to event_path(event)
  end
end
