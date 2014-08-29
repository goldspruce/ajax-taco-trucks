require 'rails_helper'

RSpec.describe "taco_trucks/index", :type => :view do
  before(:each) do
    assign(:taco_trucks, [
      TacoTruck.create!(
        :name => "Name",
        :rating => "Rating",
        :roach_count => 1,
        :price => "Price"
      ),
      TacoTruck.create!(
        :name => "Name",
        :rating => "Rating",
        :roach_count => 1,
        :price => "Price"
      )
    ])
  end

  it "renders a list of taco_trucks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
  end
end
