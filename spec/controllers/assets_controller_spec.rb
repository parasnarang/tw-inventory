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
  end

end