class CreateHouseholdUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :household_users do |t|
      t.belongs_to :household
      t.belongs_to :user
      t.timestamps
    end
  end
end
