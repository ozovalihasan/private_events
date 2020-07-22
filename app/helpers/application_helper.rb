module ApplicationHelper
    def show_sign_links
        if current_user 
            render 'layouts/sign_out_link'
        else
            render 'layouts/sign_in_link'
        end 
    end

    def show_navigation_items
        if current_user 
            render 'layouts/menu_links'
        end
    end
end
