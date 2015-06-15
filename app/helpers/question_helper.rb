module QuestionHelper
    
    ## Get all the questions in a quiz
    def getQuestions(quizId)
        
        @questions = []
            Question.where(quiz_id: quizId).find_each do |q|
                @questions.push(q)
            end
    
        return @questions
    
    end
    
    
    ## Gets all question extras given the question id
    def getQuestionExtra(questionId)
        
        @questionExtras = []
            QuestionExtra.where(question_id: questionId).find_each do |qe|
                @questionExtras.push(qe)
            end
            
        return @questionExtras
    
    end 
    
    
end
