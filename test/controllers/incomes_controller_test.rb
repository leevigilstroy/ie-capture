require 'test_helper'

class IncomesControllerTest < ActionController::TestCase
 
  def setup
    @income = incomes(:firstincome)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create income" do
    assert_difference('Income.count') do
      post :create, income: {clients_salary_wages: 59.00, partners_salary_wages: 708.00, other_income: 2088.00, user_id: 1}
    end

    assert_redirected_to income_path(assigns(:income))
  end

  test "should show income" do
    get :show, id: @income
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @income
    assert_response :success
  end

  test "should update income" do
    patch :update, id: @income.id, income: {clients_salary_wages: 59.00, partners_salary_wages: 708.00, other_income: 2088.00, user_id: 1}
    assert_redirected_to income_path(assigns(:income))
  end

  
end
