module UsersHelper
    def print_created_events
        unless @created_events.all.size.zero? 
            render 'created_events'
         end
    end

    def print_previous_events
        if @previous_events.all.size.zero? 
            render 'no_previous_events'
        else
            render 'previous_events'
        end 
    end

    def print_upcoming_events
        if @upcoming_events.all.size.zero? 
            render 'no_upcoming_events'
        else
            render 'upcoming_events'
        end 
    end
end
