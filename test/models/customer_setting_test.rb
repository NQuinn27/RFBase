require 'test_helper'

class CustomerSettingTest < ActiveSupport::TestCase
  setup do
    @customer_settings = customer_settings(:one)
  end

  test "push cert" do
    assert @customer_settings.ios_push_cert = "PushCert"
  end

  test "ios env" do
    assert @customer_settings.ios_env = "iOSEnv"
  end
end
