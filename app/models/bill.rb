class Bill < ApplicationRecord
  belongs_to :household
  has_many :user_bill_statuses
end
