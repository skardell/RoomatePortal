class CreateGroceryLists < ActiveRecord::Migration[5.0]
  def change
    create_table :grocery_lists do |t|
      t.belongs_to :user
      t.belongs_to :household
      t.timestamps
    end
  end
end
