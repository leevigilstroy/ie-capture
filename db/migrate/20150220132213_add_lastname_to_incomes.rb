class AddLastnameToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :last_name, :string
  end
end
