require 'test_helper'

class AttendionFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get "/"
    assert_select "h1", "Attendion"
  end

  test "can create a user" do
    get "/users/sign_up"
    assert_response :success

    post "/users",
         params: { user: { email: "foo@bar.de", password: "passworttttt" } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end

end
