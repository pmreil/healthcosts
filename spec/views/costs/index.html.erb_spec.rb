require 'spec_helper'

describe "costs/index.html.erb" do
  before(:each) do
    assign(:costs, [
      stub_model(Cost,
        :drg_code => 1,
        :hospital_ext_id => 1,
        :year => 1,
        :total_discharges => 1,
        :average_total_payment => 1
      ),
      stub_model(Cost,
        :drg_code => 1,
        :hospital_ext_id => 1,
        :year => 1,
        :total_discharges => 1,
        :average_total_payment => 1
      )
    ])
  end

  it "renders a list of costs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
