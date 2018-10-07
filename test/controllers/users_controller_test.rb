require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'authenticated users can see all users' do
    sign_in users()

    get '/users'
    assert_response :success
  end
end
