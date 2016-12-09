class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :household
  has_many :chores
  has_many :user_bill_statuses

  before_create :make_glist

  def make_glist
    @grocery_list = GroceryList.new
    @grocery_list.user_id = self.id
    @grocery_list.household_id = self.household_id
    @grocery_list.save
  end

end
