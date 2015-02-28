class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mortgage_reference_num

      t.timestamps null: false
    end
  end
end
