class InvitationsController < ApplicationController
  def create
    event = Event.find_by(id: params[:event_id])
    user = User.find_by(id: params[:user_id])
    event.attendees << user
    redirect_to event_path(event)
  end
end
