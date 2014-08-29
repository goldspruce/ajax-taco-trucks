require 'rails_helper'

RSpec.describe "taco_trucks/show", :type => :view do
  before(:each) do
    @taco_truck = assign(:taco_truck, TacoTruck.create!(
      :name => "Name",
      :rating => "Rating",
      :roach_count => 1,
      :price => "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Rating/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Price/)
  end
end
