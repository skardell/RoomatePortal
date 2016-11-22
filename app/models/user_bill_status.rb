class UserBillStatus < ApplicationRecord
  has_many :users
  belongs_to :bill
end