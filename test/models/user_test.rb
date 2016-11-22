require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = users(:one)
  end
  test "user should have household association" do
    @user.household
  end
end
