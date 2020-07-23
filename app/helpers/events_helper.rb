module EventsHelper
  def past_events
    if Event.past.all.size.zero?
      render 'no_past_event'
    else
      render 'past_event'
    end
  end

  def upcoming_events
    if Event.future.all.size.zero?
      render 'no_upcoming_events'
    else
      render 'future_events'
    end
  end

  def attendees
    if @event.attendees.all.size.zero?
      render 'no_attendance'
    else
      render 'attendance', event: @event
    end
  end

  def creator
    render 'invitations/form', event: @event if @event.creator == current_user
  end
end
