class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|

      t.timestamps
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth 
      t.float  :income1
      t.float  :income2
      t.float  :income3
      t.float  :income4
      t.float  :income5
      t.float  :income6
      t.float  :income7
      t.float  :income8
      t.float  :income9
      t.float  :income10
  end
end
