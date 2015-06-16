class UserQuizController < ApplicationController
    
    def new
        @UserQuiz = UserQuiz.new
    end
