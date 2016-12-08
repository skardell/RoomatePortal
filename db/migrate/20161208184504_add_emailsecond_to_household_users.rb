class AddEmailsecondToHouseholdUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :household_users, :email, :string
  end
end
