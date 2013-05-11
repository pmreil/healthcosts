require 'spec_helper'

describe "costs/new.html.erb" do
  before(:each) do
    assign(:cost, stub_model(Cost,
      :drg_code => 1,
      :hospital_ext_id => 1,
      :year => 1,
      :total_discharges => 1,
      :average_total_payment => 1
    ).as_new_record)
  end

  it "renders new cost form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => costs_path, :method => "post" do
      assert_select "input#cost_drg_code", :name => "cost[drg_code]"
      assert_select "input#cost_hospital_ext_id", :name => "cost[hospital_ext_id]"
      assert_select "input#cost_year", :name => "cost[year]"
      assert_select "input#cost_total_discharges", :name => "cost[total_discharges]"
      assert_select "input#cost_average_total_payment", :name => "cost[average_total_payment]"
    end
  end
end
