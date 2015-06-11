class UserQuizController < ApplicationController
    include UserQuizHelper
    
    helper_method :boring
    helper_method :getUser
    
    def new
        @user_quiz = user_quiz.new
    end
    
    private
    def boring
        @user_quiz = ModelClassName.new(params[:user_quiz])
    
        respond_to do |wants|
            if @user_quiz.save
                flash[:notice] = 'New Quiz Session'
                wants.html { redirect_to(@user_quiz) }
                wants.xml  { render :xml => @user_quiz, :status => :created, :location => @user_quiz }
            else
                wants.html { render :action => "new" }
                wants.xml  { render :xml => @user_quiz.errors, :status => :unprocessable_entity }
            end
        end
    end
    
    private
    def user_quiz_params
        params.require(:user_quiz).permit(:user_id,:quiz_id)
    end
    
end
