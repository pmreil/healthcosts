require "spec_helper"

describe DrgsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/drgs" }.should route_to(:controller => "drgs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/drgs/new" }.should route_to(:controller => "drgs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/drgs/1" }.should route_to(:controller => "drgs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/drgs/1/edit" }.should route_to(:controller => "drgs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/drgs" }.should route_to(:controller => "drgs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/drgs/1" }.should route_to(:controller => "drgs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/drgs/1" }.should route_to(:controller => "drgs", :action => "destroy", :id => "1")
    end

  end
end
