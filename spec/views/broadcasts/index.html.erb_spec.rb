require 'rails_helper'

RSpec.describe "broadcasts/index", type: :view do
  before(:each) do
    assign(:broadcasts, [
      Broadcast.create!(
        :title => "Title",
        :body => "Body",
        :customer => nil
      ),
      Broadcast.create!(
        :title => "Title",
        :body => "Body",
        :customer => nil
      )
    ])
  end

  it "renders a list of broadcasts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
