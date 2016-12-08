class RemoveEmailFromHouseholdUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :household_users, :email, :string
  end
end
