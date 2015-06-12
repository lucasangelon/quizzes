class SessionsController < ApplicationController
    
    # Skipping the log in requirement 
    skip_before_filter :logged_in_user
    
    def new
        
    end
    
    def create
        user = User.find_by(username: params[:session][:username].downcase)
        
        if user && user.password == (params[:session][:password])
            
            # Log the user in.
            log_in user
            
            # Redirect the user to the home page and display an alert.
            flash[:success] = "Welcome, #{user.first_name}!"
            redirect_to home_path
        else
            
            # Displaying an error message and refreshing the page.
            flash.now[:alert] = 'Invalid credentials, please try again.'
            
            render 'new'
        end
    end 
    
    def create_user_quiz
        
        #inserts new user quiz
        userQuiz = UserQuiz.create quiz_id: session[:quizId], user_id: session[:user_id]
        
        #add user_quiz id to session
        make_quiz(userQuiz)
    
        if userQuiz.save
            flash[:notice] = 'Starting New Quiz'
            redirect_to question_path
        else
            flash[:notice] = 'FAILED TO CREATE QUIZ'
        end
        
    end
    
    def destroy
        log_out
        redirect_to root_url
    end
    
end