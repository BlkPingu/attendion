require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get privacy" do
    get static_pages_privacy_url
    assert_response :success
  end

  test "should get impressum" do
    get static_pages_impressum_url
    assert_response :success
  end

end
