class AddHouseholdNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :household_name, :string
  end
end
