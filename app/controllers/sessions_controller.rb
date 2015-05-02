class SessionsController < ApplicationController
    
    def new
        
    end
    
    def create
        user = User.find_by(username: params[:session][:username].downcase)
        
        if user && user.password == (params[:session][:password])
            
            # Log the user in.
            log_in user
            
            # Redirect the user to the home page and display an alert.
            redirect_to home_path, success: "Welcome, #{user.first_name}!"
        else
            
            # Displaying an error message and refreshing the page.
            redirect_to root_path, alert: 'Invalid credentials, please try again.'
        end
    end 
    
    def destroy
        
    end
end
