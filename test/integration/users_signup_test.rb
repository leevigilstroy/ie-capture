require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  #First two tests are with Admin access.  Only Admins can create users. 
  
  def setup
    @admin_user = users(:admin)
    @normal_user = users(:oliver)
  end
  
  test "invalid user sign up, with admin Access" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: @admin_user.mortgage_reference_num, password: 'password'}
    get new_user_path
      assert_no_difference 'User.count'  do
        post users_path, user: {first_name: "Ivaliddetails", last_name: "",mortgage_reference_num:"", password: "abc",     password_confirmation: "def" }
      end
     assert_template 'users/new'
  end
  
  test "valid user sign up, with Admin access" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: @admin_user.mortgage_reference_num, password: 'password'}
    get new_user_path
      assert_difference 'User.count'  do
        assert_difference 'Income.count' do
      post users_path, user: {first_name: "Validfirstname", last_name: "Validlastname", mortgage_reference_num: "09090909067909", password: "password", password_confirmation: "password" }
          assert_not_nil assigns(:income)
    end
    end
    assert_response :redirect
    assert_not flash.empty?
  end
  
  #Second test to confirm Users/new page is not accessible by non admin users.  Only Admins can create users. 
  
  
  test "invalid user sign up, without admin Access" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: @normal_user.mortgage_reference_num, password: 'password'}
    get new_user_path
    assert_redirected_to root_path
    follow_redirect!
    assert_template 'home'
  end
  
  
end
