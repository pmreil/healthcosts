require 'spec_helper'

describe "hospitals/index.html.erb" do
  before(:each) do
    assign(:hospitals, [
      stub_model(Hospital,
        :ext_id => 1,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zipcode => 1,
        :referral_region => "Referral Region"
      ),
      stub_model(Hospital,
        :ext_id => 1,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zipcode => 1,
        :referral_region => "Referral Region"
      )
    ])
  end

  it "renders a list of hospitals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Referral Region".to_s, :count => 2
  end
end
