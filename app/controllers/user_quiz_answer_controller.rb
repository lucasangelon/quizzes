class UserQuizAnswerController < ApplicationController
    include UserQuizAnswerHelper
    
    helper_method :insertAnswer
    helper_method :createUQA
    
    def new
    end
    
    def create
        @user_quiz_answer = UserQuizAnswer.new(user_quiz_answer_params)
    end
    
    private
    def user_quiz_answer_params
        params.require(:user_quiz_answers).permit(:user_id,:user_quiz_id,:question_id,:question_extra_id,:answer_text)
    end
end
