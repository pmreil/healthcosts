require 'spec_helper'

describe "drgs/edit.html.erb" do
  before(:each) do
    @drg = assign(:drg, stub_model(Drg,
      :code => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit drg form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => drgs_path(@drg), :method => "post" do
      assert_select "input#drg_code", :name => "drg[code]"
      assert_select "input#drg_description", :name => "drg[description]"
    end
  end
end
