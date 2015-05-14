class ApplicationPagesController < ApplicationController
    
  def home
    @courses = []
    CourseUser.where(user_id: session[:user_id]).find_each do |c|
      @courses.push(c.course_id)
    end
    
    @courseTitles = []
    @courses.each do |c|
      @courseTitles.push(Course.find(c))
    end
    
    
    #@courseTitles = Course.where(id: courses.course_id)
    @clusters = CourseCluster.find_by([:course_id][1])
    @clusterUnits = ClusterUnit.find_by([:cluster_id][1])
    @units = Unit.last(3)
  end

  def quizzes
  end

  def question
  end

  def review
  end
end