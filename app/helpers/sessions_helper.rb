module SessionsHelper
    
    # Logs a given user in.
    def log_in(user)
        session[:user_id] = user.id
    end
    
    # Returns the current logged-in user (if not nil).
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    # Returns true if the user is logged in.
    def logged_in?
        !current_user.nil?
    end
    
    # Logs out the current user.
    def log_out
        session.delete(@current_user.id)
        @current_user = nil
    end
    
    # Sets the current users_quiz_id and quiz_id
    def make_quiz(user_quiz)
        session[:quiz_id] = user_quiz.quiz_id
    end
    
    # Destroys the current userquid 
    def finish_quiz
        session.delete(:quiz_id)
    end
    
end
