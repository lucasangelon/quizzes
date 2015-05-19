class AnswerController < ApplicationController
    
    def new
        @answer = Answer.new
    end
    
    
    def create
        
        @answer = Answer.new(answer_params)
        
    end
    
    private
    def answer_params
        params.require(:answer).permit(:content, :question_id, :user_id, :type_id)
    end
    
end
