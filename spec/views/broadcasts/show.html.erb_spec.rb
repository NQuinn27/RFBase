require 'rails_helper'

RSpec.describe "broadcasts/show", type: :view do
  before(:each) do
    @broadcast = assign(:broadcast, Broadcast.create!(
      :title => "Title",
      :body => "Body",
      :customer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Body/)
    expect(rendered).to match(//)
  end
end
