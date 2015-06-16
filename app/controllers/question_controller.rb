class QuestionController < ApplicationController
    
    include QuestionHelper
    include UserQuizAnswerController
    def question
        @user_quiz_answer = {(1), (1), (1), (1), ("Anything")}
    end
    
    def new
        @user_quiz_answer = user_quiz_answer.new
    end
    
    def create
        @user_quiz_answer = UserQuizAnswer.new(user_quiz_answer_params)
        
        if @user_quiz_answer.save
          flash[:success] = "Welcome to Quizzes!"
          redirect_to home_path
        else
          render 'new'
        end
    end
    
    private
    def user_quiz_answer_params
        params.require(:user_quiz_answers).permit(:user_id,:user_quiz_id,:question_id,:question_extra_id,:answer_text)
    end
    
    def index
        @user_quiz_answer = UserQuizAnswer.all
    end

    
end
