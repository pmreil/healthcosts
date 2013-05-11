require 'spec_helper'

describe "hospitals/show.html.erb" do
  before(:each) do
    @hospital = assign(:hospital, stub_model(Hospital,
      :ext_id => 1,
      :name => "Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zipcode => 1,
      :referral_region => "Referral Region"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Referral Region/)
  end
end
