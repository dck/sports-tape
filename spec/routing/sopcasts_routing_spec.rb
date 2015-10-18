require "rails_helper"

RSpec.describe SopcastsController, :type => :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/sopcasts").to route_to("sopcasts#index")
    end

    it "routes to #show" do
      expect(:get => "/sopcasts/1").to route_to("sopcasts#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sopcasts").to route_to("sopcasts#create")
    end

    it "routes to #update" do
      expect(:put => "/sopcasts/1").to route_to("sopcasts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sopcasts/1").to route_to("sopcasts#destroy", :id => "1")
    end
  end
end
