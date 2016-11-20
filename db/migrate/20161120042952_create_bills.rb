class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.datetime :due_date
      t.decimal :cost
      t.belongs_to :household
      t.timestamps
    end
  end
end
