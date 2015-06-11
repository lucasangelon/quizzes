module QuizHelper
    
        ## Get all the questions in a quiz
    def getQuiz(unitId)
        
        @quizzes = []
            Quiz.where(unit_id: unitId).find_each do |q|
                @quizzes.push(q)
            end
    
        return @quizzes
    
    end
    
end