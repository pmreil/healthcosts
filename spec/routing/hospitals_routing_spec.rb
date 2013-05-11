require "spec_helper"

describe HospitalsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/hospitals" }.should route_to(:controller => "hospitals", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/hospitals/new" }.should route_to(:controller => "hospitals", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/hospitals/1" }.should route_to(:controller => "hospitals", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/hospitals/1/edit" }.should route_to(:controller => "hospitals", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/hospitals" }.should route_to(:controller => "hospitals", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/hospitals/1" }.should route_to(:controller => "hospitals", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/hospitals/1" }.should route_to(:controller => "hospitals", :action => "destroy", :id => "1")
    end

  end
end
