require 'spec_helper'

describe AssetType do

  it {should validate_presence_of(:properties)}
  it {should validate_presence_of(:name)}
  it {should embed_many(:assets)}

  it "should insert timestamps on create" do
    at = FactoryGirl.create(:asset_type)
    at.created_at.should_not be_nil
    at.updated_at.should_not be_nil
  end

  context :unassigned_asset_count do
    it "should return no of assets that are yet not assigned to any employee" do
     at = FactoryGirl.create(:asset_type)
     FactoryGirl.create(:asset, :asset_type => at)
     at.unassigned_asset_count.should == 1
    end

    it "should return 0 if all asset have been assigned" do
      at = FactoryGirl.create(:asset_type)
      #FactoryGirl.create(:asset, :asset_type => at)
      at.unassigned_asset_count.should == 0
    end
  end
end
