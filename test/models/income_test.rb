require 'test_helper'

class IncomeTest < ActiveSupport::TestCase

  def setup
    @user = users(:oliver)
    @income = @user.build_income(clients_salary_wages: 59.00)
  end

  test "should be valid" do
    assert @income.valid?
  end

  test "user id should be present" do
    @income.user_id = nil
    assert_not @income.valid?
  end
end
  
  

