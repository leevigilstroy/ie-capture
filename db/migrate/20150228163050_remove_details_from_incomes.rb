class RemoveDetailsFromIncomes < ActiveRecord::Migration
  def change
    remove_column :incomes, :first_name, :string
    remove_column :incomes, :last_name, :string
  end
end
