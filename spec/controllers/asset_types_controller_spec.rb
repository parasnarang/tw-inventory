require 'spec_helper'

describe AssetTypesController do
  before do
    @admin = FactoryGirl.create(:user, :role => 'Admin', :ad_id => 'homer')
    RubyCAS::Filter.fake('homer')
  end

  it "should list all asset types" do
    AssetType.should_receive(:all).and_call_original
    get :index
    response.should be_success
  end

end