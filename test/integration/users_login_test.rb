require 'test_helper'
#This is placed in /integration because of the link between the sessions controller and the users controller.
class UsersLoginTest < ActionDispatch::IntegrationTest

  test "login with invalid details" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: "", password: ""}
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
  
  def setup
    @user = users(:oliver)
  end
  
  test "login with valid details" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: @user.mortgage_reference_num, password: 'password'}
    assert_response :redirect
    follow_redirect!
    assert_template 'incomes/show'
    assert_not_nil assigns(:income)
    
  end
  
  
end
