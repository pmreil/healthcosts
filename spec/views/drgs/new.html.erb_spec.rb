require 'spec_helper'

describe "drgs/new.html.erb" do
  before(:each) do
    assign(:drg, stub_model(Drg,
      :code => 1,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new drg form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => drgs_path, :method => "post" do
      assert_select "input#drg_code", :name => "drg[code]"
      assert_select "input#drg_description", :name => "drg[description]"
    end
  end
end
