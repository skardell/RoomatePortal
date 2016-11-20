class CreateUserBillStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :user_bill_statuses do |t|
      t.belongs_to :user
      t.belongs_to :bill
      t.string :status
      t.timestamps
    end
  end
end
