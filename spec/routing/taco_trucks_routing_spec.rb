require "rails_helper"

RSpec.describe TacoTrucksController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/taco_trucks").to route_to("taco_trucks#index")
    end

    it "routes to #new" do
      expect(:get => "/taco_trucks/new").to route_to("taco_trucks#new")
    end

    it "routes to #show" do
      expect(:get => "/taco_trucks/1").to route_to("taco_trucks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/taco_trucks/1/edit").to route_to("taco_trucks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/taco_trucks").to route_to("taco_trucks#create")
    end

    it "routes to #update" do
      expect(:put => "/taco_trucks/1").to route_to("taco_trucks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/taco_trucks/1").to route_to("taco_trucks#destroy", :id => "1")
    end

  end
end
