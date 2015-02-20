class AddClientsSalaryWagesToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :clients_salary_wages, :decimal
  end
end
