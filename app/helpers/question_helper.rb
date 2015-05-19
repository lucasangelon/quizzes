module QuestionHelper
    
    def getQuestions(quizId)
        
        @questions = []
            Question.where(quiz_id: quizId).find_each do |q|
                @questions.push(q)
            end
    
        return @questions
    
    end
    
    
    
    
end
