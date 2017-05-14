require "rails_helper"

RSpec.describe BroadcastsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/broadcasts").to route_to("broadcasts#index")
    end

    it "routes to #new" do
      expect(:get => "/broadcasts/new").to route_to("broadcasts#new")
    end

    it "routes to #show" do
      expect(:get => "/broadcasts/1").to route_to("broadcasts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/broadcasts/1/edit").to route_to("broadcasts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/broadcasts").to route_to("broadcasts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/broadcasts/1").to route_to("broadcasts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/broadcasts/1").to route_to("broadcasts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/broadcasts/1").to route_to("broadcasts#destroy", :id => "1")
    end

  end
end
