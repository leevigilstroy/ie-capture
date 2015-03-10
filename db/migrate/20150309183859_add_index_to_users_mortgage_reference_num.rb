class AddIndexToUsersMortgageReferenceNum < ActiveRecord::Migration
  def change
    add_index :users, :mortgage_reference_num, unique: true
  end
end
