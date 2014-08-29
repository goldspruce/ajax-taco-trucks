require 'rails_helper'

RSpec.describe "taco_trucks/new", :type => :view do
  before(:each) do
    assign(:taco_truck, TacoTruck.new(
      :name => "MyString",
      :rating => "MyString",
      :roach_count => 1,
      :price => "MyString"
    ))
  end

  it "renders new taco_truck form" do
    render

    assert_select "form[action=?][method=?]", taco_trucks_path, "post" do

      assert_select "input#taco_truck_name[name=?]", "taco_truck[name]"

      assert_select "input#taco_truck_rating[name=?]", "taco_truck[rating]"

      assert_select "input#taco_truck_roach_count[name=?]", "taco_truck[roach_count]"

      assert_select "input#taco_truck_price[name=?]", "taco_truck[price]"
    end
  end
end
