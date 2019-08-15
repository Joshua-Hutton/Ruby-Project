class ApplicationController < ActionController::Base
    before_action :require_login, :except => [:new, :create] 
    helper_method :current_user 
    

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = nil
        end
    end

    def require_login
        if current_user == nil
            flash[:error] = "You must be logged in to access this section"
            redirect_to login_path
        
        end
    end
end
