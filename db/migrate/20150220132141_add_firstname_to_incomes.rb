class AddFirstnameToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :first_name, :string
    end
end
