module UserQuizHelper
    
    #Get the current user
    def getUser()
        return session[:user_id]
    end
    
end
