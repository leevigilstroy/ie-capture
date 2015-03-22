require 'test_helper'

class IncomesControllerTest < ActionDispatch::IntegrationTest
 
  def setup
    @income = incomes(:firstincome)
    @admin_user = users(:admin)
    @normal_user = users(:oliver)
    @normal_user_income = incomes(:secondincome)
  end

#test Admin access income actions
  test "should get index of incomes" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: @admin_user.mortgage_reference_num, password: 'password'}
    get incomes_path
    assert_response :success
    assert_not_nil assigns(:incomes) #test to make sure @incomes instance variable is assigned. 
  end

  test "should destroy income" do
  assert_difference('Income.count', -1) do
    delete_via_redirect("incomes/",  id: @income.id)
  end
  assert_redirected_to incomes_path
  end


test "show income if user is admin" do
    get login_path
    assert_template 'sessions/new'
    post login_path, sessions: {mortgage_reference_num: @admin_user.mortgage_reference_num, password: 'password'}
    get incomes_path, incomes: {id: @income.id}
    assert_response :success
    assert_not_nil assigns(:incomes) #test to make sure @incomes instance variable is assigned. 
  end
  
#test non-Admin access income actions 
test "should not get index of incomes" do
    get login_path
    assert_template 'sessions/new'
  post login_path, sessions: {mortgage_reference_num: @normal_user.mortgage_reference_num, password: 'password'}
    get incomes_path
    assert_redirected_to root_path
end


test "should not get incomes/new if not logged in" do
  get_via_redirect("/incomes/new")
  assert_template 'sessions/new'
 end

test "should notcreate income if not logged in" do
     assert_difference('Income.count', 0) do
     post_via_redirect("/incomes", clients_salary_wages: 59.00, partners_salary_wages: 708.00, other_income: 2088.00, user_id: 1)
     end
    assert_template 'sessions/new'
   end

test "must not show income of other user" do
   get login_path
   assert_template 'sessions/new'
   post login_path, sessions: {mortgage_reference_num: @normal_user.mortgage_reference_num, password: 'password'}
   get incomes_path, incomes: {id: @income.id}
   assert_response :redirect  
   follow_redirect!
   assert_template 'home'
    
 end

test "show user income" do
   get login_path
   assert_template 'sessions/new'
   post login_path, sessions: {mortgage_reference_num: @normal_user.mortgage_reference_num, password: 'password'}
   get income_path(id: 2)
    assert_template 'incomes/show'
   assert_not_nil assigns(:income)  

 end


  
end
