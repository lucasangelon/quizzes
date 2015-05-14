class ApplicationPagesController < ApplicationController
  include HomepageHelper
  
  helper_method :getCourses
  helper_method :getClusters
  helper_method :getUnits
  
  # Homepage section
  def home
  end

  def quizzes
  end

  def question
  end

  def review
  end
end