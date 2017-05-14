require 'test_helper'

class ThemeTest < ActiveSupport::TestCase
  setup do
    @theme = themes(:one)
  end

  test "primary color" do
    assert @theme.primary_color == "MyString"
  end

  test "primary inverse color" do
    assert @theme.primary_inverse_color == "MyString"
  end

  test "primary font color" do
    assert @theme.primary_font_color == "MyString"
  end

  test "secondary font color" do
    assert @theme.secondary_font_color == "MyString"
  end
end
