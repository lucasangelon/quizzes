class UserQuizController < ApplicationController
    
    def new
        @UserQuiz = UserQuiz.new
    end
    
    def create
        @UserQuiz = UserQuiz.new(user_quiz_params)
        respond_to do |wants|
            if @UserQuiz.save
                flash[:success] = 'user_quiz was successfully created.'
                
            end
    end
    
    private
    def user_quiz_params
        params.require(:user_quiz).permit(:user_id,:quiz_id)
    end
end