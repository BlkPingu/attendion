# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "Users who aren't logged in cannot see users" do
    get users_index_path
    assert_response :redirect
  end

  test "Users who aren't logged in cannot see events" do
    get events_all_path
    assert_response :redirect
  end

  test "Everyone can get to User Registration" do
    get new_user_registration_path
    assert_response :success
  end

  test "Registered users can see all Users" do
    sign_in users(:one)
    get users_index_path
    assert_response :success
  end
  
end
