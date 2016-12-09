class AddRequestorToChores < ActiveRecord::Migration[5.0]
  def change
    add_column :chores, :requestor, :string
  end
end
