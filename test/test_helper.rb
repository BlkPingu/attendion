# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

module MiniTestWithBullet
  require 'minitest/unit'

  def before_setup
    Bullet.start_request
    super if defined?(super)
  end

  def after_teardown
    super if defined?(super)
    Bullet.perform_out_of_channel_notifications if Bullet.notification?
    Bullet.end_request
  end
end

module ActiveSupport
  class TestCase
    fixtures :all
    include MiniTestWithBullet
  end
end
