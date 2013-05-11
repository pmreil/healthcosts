require 'spec_helper'

describe "hospitals/edit.html.erb" do
  before(:each) do
    @hospital = assign(:hospital, stub_model(Hospital,
      :ext_id => 1,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => 1,
      :referral_region => "MyString"
    ))
  end

  it "renders the edit hospital form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hospitals_path(@hospital), :method => "post" do
      assert_select "input#hospital_ext_id", :name => "hospital[ext_id]"
      assert_select "input#hospital_name", :name => "hospital[name]"
      assert_select "input#hospital_address", :name => "hospital[address]"
      assert_select "input#hospital_city", :name => "hospital[city]"
      assert_select "input#hospital_state", :name => "hospital[state]"
      assert_select "input#hospital_zipcode", :name => "hospital[zipcode]"
      assert_select "input#hospital_referral_region", :name => "hospital[referral_region]"
    end
  end
end
