module EventsHelper
  def past_events
    if Event.past.count.zero?
      render 'no_event'
       else 
      render 'event'
     end
  end 
  def upcoming_events
    if Event.future.count.zero?
      render 'no_upcoming_events'
    else
      render 'future_events'
    end
  end
end
