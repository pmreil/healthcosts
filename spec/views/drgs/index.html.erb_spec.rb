require 'spec_helper'

describe "drgs/index.html.erb" do
  before(:each) do
    assign(:drgs, [
      stub_model(Drg,
        :code => 1,
        :description => "Description"
      ),
      stub_model(Drg,
        :code => 1,
        :description => "Description"
      )
    ])
  end

  it "renders a list of drgs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
