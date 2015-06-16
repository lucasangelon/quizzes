module ApplicationHelper
    
    def getUserQuizAnswers(quizId,userId)
        @ans_array = []
        uq = UserQuizzes.create(user_id: userId, quiz_id: quizId)
        Question.where(quiz_id: quizId).find_each do |q|
            uqa = UserQuizAnswers.create(user_quiz_id: uq.id, question_id: q.id)
            @ans_array.push(uqa)
        end
    
        return @ans_array
    end
    
end
