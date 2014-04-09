require 'spec_helper'

describe AssetsController do
  before do
    @admin = FactoryGirl.create(:user, :role => 'Admin')
    @at = FactoryGirl.create(:asset_type)
    RubyCAS::Filter.fake('parasnar')
  end

  context :new do
    it "should render new template" do
      get :new, :asset_type_id => @at.id
      response.should render_template(:new)
    end

    it "should build new asset with passed asset type" do
      get :new, :asset_type_id => @at.id
      asset = controller.instance_variable_get(:@asset)
      asset.should_not be_nil
      asset.should be_new_record
    end
  end

  context :create do
    it "should create new asset with passed params" do
      get :create, :asset_type_id => @at.id, :asset => {:properties => {:serial => '111222', :ram => '2gb',:processor => ""}}
      Asset.count.should == 1
    end

    it "should redirect to asset types list path" do
      get :create, :asset_type_id => @at.id, :asset => {:properties => {:serial => '111222', :ram => '2gb',:processor => ""}}
      response.should redirect_to(asset_types_path)
    end

    it "should render new form if asset save fails" do
      Asset.any_instance.should_receive(:save).and_return(false)
      get :create, :asset_type_id => @at.id, :asset => {:properties => {:serial => '111222', :ram => '2gb',:processor => ""}}
      response.should render_template(:new)
    end
  end

  context :index do
    before do
      @asset = FactoryGirl.create(:asset, :asset_type => @at)
    end
    it "should render list of all assets" do
      Asset.should_receive(:all).and_call_original
      get :index
      response.should render_template(:asset_list)
    end

    it "should render list of all assets of particular asset type" do
      Asset.should_receive(:where).and_call_original
      get :index, :asset_type_id => @at.id
      response.should render_template(:index)
    end
  end

  context :show do
    before do
      @asset = FactoryGirl.create(:asset, :asset_type => @at)
    end

    it "should render a particular asset" do
      Asset.should_receive(:find).and_call_original
      get :show, :id => @asset.id
      response.should render_template(:show)
    end

    it "should render 404 for wrong id" do
      Asset.should_receive(:find).and_call_original
      get :show, :id => 1
      response.status.should == 404
    end
  end

  context :destroy do
    before do
      @asset = FactoryGirl.create(:asset, :asset_type => @at)
    end
    it "should destroy the asset" do
      delete :destroy, :id => @asset.id
      lambda{Asset.find(@asset.id)}.should raise_error
    end

    it "should redirect to index path" do
      delete :destroy, :id => @asset.id
      response.should redirect_to(assets_path)
    end
  end

  context :clone do

  end

end