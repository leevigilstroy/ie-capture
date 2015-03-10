require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  test "login with invalid details" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: "", password: ""}
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end
  
  test "login with valid details" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: "1234567890", password: ""}
    assert_response :redirect
  end
  
  
end
