class ApplicationPagesController < ApplicationController
  include HomepageHelper
  include QuestionHelper
  #include UserQuizAnswerController
  
  helper_method :getCourses
  helper_method :getClusters
  helper_method :getUnits
  
  # Homepage section
  def home
  end

  def quizzes
  end

  def question
    #user_quiz_answer_params = ["user_id" => 1, "user_quiz_id" =>1, "question_id" =>1, "question_extra_id" => 1, "answer_text" =>"anything"]
    @user_quiz_answer = UserQuizAnswer.new(user_quiz_id:1,question_id:1,question_extra_id:1,answer_text:'test')
  end
  
  def new
      @user_quiz_answer = user_quiz_answer.new
  end
  
  def create
      @user_quiz_answer = UserQuizAnswer.new(user_quiz_answer_params)
      
      if @user_quiz_answer.save
        flash[:success] = "Welcome to Quizzes!"
        redirect_to home_path
      else
        render 'new'
      end
  end
  
  private
  def user_quiz_answer_params
      params.require(:user_quiz_answers).permit(:user_id,:user_quiz_id,:question_id,:question_extra_id,:answer_text)
  end
  
  def index
      @user_quiz_answer = UserQuizAnswer.all
  end


   def question_params
    params.require(:quiz).permit(:id, :name)
   end
    

  def review
  end
end