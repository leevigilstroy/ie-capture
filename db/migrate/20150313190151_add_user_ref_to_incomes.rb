class AddUserRefToIncomes < ActiveRecord::Migration
  def change
    add_reference :incomes, :user, index: true
    add_foreign_key :incomes, :users
  end
end
