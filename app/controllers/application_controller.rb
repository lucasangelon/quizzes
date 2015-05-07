class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  
  before_filter :logged_in_user
  
  private
  
  def logged_in_user
    unless logged_in?
      flash[:alert] = "Please log in to use the application."
      redirect_to login_url
    end
  end
  
  #before_filter :direct_home
  
  #private
  
  #def direct_home
  #  unless !logged_in?
  #    redirect_to home_path
  #  end
  #end
  
end