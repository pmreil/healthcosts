require 'spec_helper'

describe "Drgs" do
  describe "GET /drgs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get drgs_path
      response.status.should be(200)
    end
  end
end
