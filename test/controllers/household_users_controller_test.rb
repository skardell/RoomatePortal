require 'test_helper'

class HouseholdUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @household_user = household_users(:one)
  end

  test "should get index" do
    get household_users_url
    assert_response :success
  end

  test "should get new" do
    get new_household_user_url
    assert_response :success
  end

  test "should create household_user" do
    assert_difference('HouseholdUser.count') do
      post household_users_url, params: { household_user: {  } }
    end

    assert_redirected_to household_user_url(HouseholdUser.last)
  end

  test "should show household_user" do
    get household_user_url(@household_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_household_user_url(@household_user)
    assert_response :success
  end

  test "should update household_user" do
    patch household_user_url(@household_user), params: { household_user: {  } }
    assert_redirected_to household_user_url(@household_user)
  end

  test "should destroy household_user" do
    assert_difference('HouseholdUser.count', -1) do
      delete household_user_url(@household_user)
    end

    assert_redirected_to household_users_url
  end
end
