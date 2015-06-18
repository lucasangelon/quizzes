module ApplicationPagesHelper
    
    def getUserQuizAnswers(userQuizId)
        @ans_array = []
        uq = UserQuiz.where(id: userQuizId).at(0)
        Question.where(quiz_id: uq.quiz_id).find_each do |q|
            uqa = UserQuizAnswers.create(user_quiz_id: uq.id, question_id: q.id)
            @ans_array.push(uqa)
        end
    
        return @ans_array
    end
end
