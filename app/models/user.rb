class User < ApplicationRecord
  belongs_to :household
  has_many :chores
  has_many :user_bill_statuses
end
