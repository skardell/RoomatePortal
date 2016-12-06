class AddCodeToHouseholds < ActiveRecord::Migration[5.0]
  def change
    add_column :households, :code, :string
  end
end
