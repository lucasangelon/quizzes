require 'test_helper'

class ApplicationPagesControllerTest < ActionController::TestCase
  test "should get landing" do
    get :landing
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get quizzes" do
    get :quizzes
    assert_response :success
  end

  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get review" do
    get :review
    assert_response :success
  end

  test "should get details" do
    get :details
    assert_response :success
  end

end
