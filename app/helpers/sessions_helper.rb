module SessionsHelper
    def sign_in_form
        if current_user.nil?
            render 'sessions/sign_in_form'
        end
    end
end
