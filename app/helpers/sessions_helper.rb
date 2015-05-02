module SessionsHelper
    
    # Logs a given user in.
    def log_in(user)
        session[:user_id] = user.id
    end
end
 