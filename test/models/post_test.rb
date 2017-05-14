require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @post = posts(:one)
  end

  test "post title" do
    assert @post.title == "MyString"
  end

  test "post body" do
    assert @post.body == "MyText"
  end

  test "header image_" do
    assert @post.header_image_url == "http://res.cloudinary.com/hxyhywvx2/raw/upload/HeaderUrl"
  end

  test "icon image" do
    assert @post.icon_image_url == "http://res.cloudinary.com/hxyhywvx2/raw/upload/IconUrl"
  end
end
