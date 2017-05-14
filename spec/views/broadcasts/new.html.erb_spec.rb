require 'rails_helper'

RSpec.describe "broadcasts/new", type: :view do
  before(:each) do
    assign(:broadcast, Broadcast.new(
      :title => "MyString",
      :body => "MyString",
      :customer => nil
    ))
  end

  it "renders new broadcast form" do
    render

    assert_select "form[action=?][method=?]", broadcasts_path, "post" do

      assert_select "input#broadcast_title[name=?]", "broadcast[title]"

      assert_select "input#broadcast_body[name=?]", "broadcast[body]"

      assert_select "input#broadcast_customer_id[name=?]", "broadcast[customer_id]"
    end
  end
end
