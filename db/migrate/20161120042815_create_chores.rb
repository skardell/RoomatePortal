class CreateChores < ActiveRecord::Migration[5.0]
  def change
    create_table :chores do |t|
      t.belongs_to :user
      t.belongs_to :household
      t.datetime :deadline
      t.string :name
      t.string :status
      t.integer :assignee_id
      t.timestamps
    end
  end
end
