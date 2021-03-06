require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe DrgsController do

  def mock_drg(stubs={})
    @mock_drg ||= mock_model(Drg, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all drgs as @drgs" do
      Drg.stub(:all) { [mock_drg] }
      get :index
      assigns(:drgs).should eq([mock_drg])
    end
  end

  describe "GET show" do
    it "assigns the requested drg as @drg" do
      Drg.stub(:find).with("37") { mock_drg }
      get :show, :id => "37"
      assigns(:drg).should be(mock_drg)
    end
  end

  describe "GET new" do
    it "assigns a new drg as @drg" do
      Drg.stub(:new) { mock_drg }
      get :new
      assigns(:drg).should be(mock_drg)
    end
  end

  describe "GET edit" do
    it "assigns the requested drg as @drg" do
      Drg.stub(:find).with("37") { mock_drg }
      get :edit, :id => "37"
      assigns(:drg).should be(mock_drg)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created drg as @drg" do
        Drg.stub(:new).with({'these' => 'params'}) { mock_drg(:save => true) }
        post :create, :drg => {'these' => 'params'}
        assigns(:drg).should be(mock_drg)
      end

      it "redirects to the created drg" do
        Drg.stub(:new) { mock_drg(:save => true) }
        post :create, :drg => {}
        response.should redirect_to(drg_url(mock_drg))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved drg as @drg" do
        Drg.stub(:new).with({'these' => 'params'}) { mock_drg(:save => false) }
        post :create, :drg => {'these' => 'params'}
        assigns(:drg).should be(mock_drg)
      end

      it "re-renders the 'new' template" do
        Drg.stub(:new) { mock_drg(:save => false) }
        post :create, :drg => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested drg" do
        Drg.stub(:find).with("37") { mock_drg }
        mock_drg.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :drg => {'these' => 'params'}
      end

      it "assigns the requested drg as @drg" do
        Drg.stub(:find) { mock_drg(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:drg).should be(mock_drg)
      end

      it "redirects to the drg" do
        Drg.stub(:find) { mock_drg(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(drg_url(mock_drg))
      end
    end

    describe "with invalid params" do
      it "assigns the drg as @drg" do
        Drg.stub(:find) { mock_drg(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:drg).should be(mock_drg)
      end

      it "re-renders the 'edit' template" do
        Drg.stub(:find) { mock_drg(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested drg" do
      Drg.stub(:find).with("37") { mock_drg }
      mock_drg.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the drgs list" do
      Drg.stub(:find) { mock_drg }
      delete :destroy, :id => "1"
      response.should redirect_to(drgs_url)
    end
  end

end
