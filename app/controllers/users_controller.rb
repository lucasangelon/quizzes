class UsersController < ApplicationController
  
  # Run this before some actions.
  before_action :set_user, only: [:edit, :update]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      log_in @user
      flash[:success] = "Welcome to Quizzes!"
      redirect_to home_path
    else
      render 'new'
    end
  end

  def edit
    
  end
  
  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated!"
      redirect_to home_path
    else
      render 'edit'
    end
  end
  
  private
  def set_user
    @user = current_user
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :password)
  end
end
