require 'spec_helper'

describe "drgs/show.html.erb" do
  before(:each) do
    @drg = assign(:drg, stub_model(Drg,
      :code => 1,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
