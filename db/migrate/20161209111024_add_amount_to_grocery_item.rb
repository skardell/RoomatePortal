class AddAmountToGroceryItem < ActiveRecord::Migration[5.0]
  def change
    add_column :grocery_items, :amount, :integer
  end
end
