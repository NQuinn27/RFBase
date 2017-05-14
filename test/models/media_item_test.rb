require 'test_helper'

class MediaItemTest < ActiveSupport::TestCase
  setup do
    @media_item = media_items(:one)
  end

  test "caption" do
    assert @media_item.caption == "MyString"
  end

  test "customer" do
    assert @media_item.customer_id == 2
  end
end
