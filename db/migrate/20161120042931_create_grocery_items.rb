class CreateGroceryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :grocery_items do |t|
      t.string :name
      t.belongs_to :grocery_list
      t.timestamps
    end
  end
end
