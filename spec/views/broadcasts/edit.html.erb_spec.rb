require 'rails_helper'

RSpec.describe "broadcasts/edit", type: :view do
  before(:each) do
    @broadcast = assign(:broadcast, Broadcast.create!(
      :title => "MyString",
      :body => "MyString",
      :customer => nil
    ))
  end

  it "renders the edit broadcast form" do
    render

    assert_select "form[action=?][method=?]", broadcast_path(@broadcast), "post" do

      assert_select "input#broadcast_title[name=?]", "broadcast[title]"

      assert_select "input#broadcast_body[name=?]", "broadcast[body]"

      assert_select "input#broadcast_customer_id[name=?]", "broadcast[customer_id]"
    end
  end
end
