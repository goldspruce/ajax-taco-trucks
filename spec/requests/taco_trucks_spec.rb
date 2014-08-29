require 'rails_helper'

RSpec.describe "TacoTrucks", :type => :request do
  describe "GET /taco_trucks" do
    it "works! (now write some real specs)" do
      get taco_trucks_path
      expect(response.status).to be(200)
    end
  end
end
