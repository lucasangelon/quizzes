class UserQuiz < ActiveRecord::Base
    #self.table_name = 'user_quizs'

    has_many :user_quiz_answer
    accepts_nested_attributes_for :user_quiz_answer
    
    
end
