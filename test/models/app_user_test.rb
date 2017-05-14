require 'test_helper'

class AppUserTest < ActiveSupport::TestCase
  setup do
    @app_user = app_users(:one)
  end

  test "first name" do
    assert @app_user.first_name == "John"
  end

  test "last name" do
    assert @app_user.last_name == "Doe"
  end

  test "device token" do
    assert @app_user.device_token == "DeviceToken"
  end

  test "device type" do
    assert @app_user.device_type == "iOS"
  end

  test "push token" do
    assert @app_user.push_token == "PushToken"
  end
end
