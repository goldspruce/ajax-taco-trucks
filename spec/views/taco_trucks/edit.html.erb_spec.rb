require 'rails_helper'

RSpec.describe "taco_trucks/edit", :type => :view do
  before(:each) do
    @taco_truck = assign(:taco_truck, TacoTruck.create!(
      :name => "MyString",
      :rating => "MyString",
      :roach_count => 1,
      :price => "MyString"
    ))
  end

  it "renders the edit taco_truck form" do
    render

    assert_select "form[action=?][method=?]", taco_truck_path(@taco_truck), "post" do

      assert_select "input#taco_truck_name[name=?]", "taco_truck[name]"

      assert_select "input#taco_truck_rating[name=?]", "taco_truck[rating]"

      assert_select "input#taco_truck_roach_count[name=?]", "taco_truck[roach_count]"

      assert_select "input#taco_truck_price[name=?]", "taco_truck[price]"
    end
  end
end
