# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should not save user without email and password" do
    user = User.new
    assert_not user.save
  end

end
