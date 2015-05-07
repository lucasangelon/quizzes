class ApplicationPagesController < ApplicationController
  
  # Skipping the log in requirement 
  #skip_before_filter :redirect_home
    
  def home
  end

  def quizzes
  end

  def question
  end

  def review
  end
end
