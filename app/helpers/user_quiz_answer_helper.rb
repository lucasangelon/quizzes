module UserQuizAnswerHelper
    
    @UserQuizAnswers = []
    
    public
    def insertAnswer(uqa)
        @UserQuizAnswers.push(uqa)
    end
    
    def createUQA(size)
        @userQuizAnswers[size]
        return @userQuizAnswers
    end
end
