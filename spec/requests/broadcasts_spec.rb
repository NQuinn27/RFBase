require 'rails_helper'

RSpec.describe "Broadcasts", type: :request do
  describe "GET /broadcasts" do
    it "works! (now write some real specs)" do
      get broadcasts_path
      expect(response).to have_http_status(200)
    end
  end
end
