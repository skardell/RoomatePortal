class HouseholdUser < ApplicationRecord
  has_many :users
  belongs_to :household
end
