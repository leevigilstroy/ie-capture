require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
 
  test "invalid user sign up" do
    get new_user_path
    assert_no_difference 'User.count'  do
    post users_path, user: {first_name: "Ivaliddetails", last_name: "",mortgage_reference_num:"", password: "abc", password_confirmation: "def" }
  end
    assert_template 'users/new'
end
  
  test "valid user sign up" do
    get new_user_path
    assert_difference('User.count')  do
      post users_path, user: {first_name: "Validfirstname", last_name: "Validlastname", mortgage_reference_num: "090909090909", password: "password", password_confirmation: "password" }
    end
    assert_response :redirect
  end
  
  
end
