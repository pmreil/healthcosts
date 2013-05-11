require 'spec_helper'

describe "costs/show.html.erb" do
  before(:each) do
    @cost = assign(:cost, stub_model(Cost,
      :drg_code => 1,
      :hospital_ext_id => 1,
      :year => 1,
      :total_discharges => 1,
      :average_total_payment => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
