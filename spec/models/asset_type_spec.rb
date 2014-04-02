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
    before do
      @at = FactoryGirl.create(:asset_type)
      @non_admin = FactoryGirl.create(:user)
      @asset1 = FactoryGirl.create(:asset, :asset_type => @at)
      @asset2 = FactoryGirl.create(:asset, :asset_type => @at)
    end
    it "should return num of assets that are yet not assigned to any employee" do
     FactoryGirl.create(:assignment, :asset => @asset1, :user => @non_admin, :start_date => 1.month.ago.to_date, :end_date => 1.month.from_now.to_date)
     @at.unassigned_asset_count.should == 1
    end

    it "should return 0 if all asset have been assigned" do
      FactoryGirl.create(:assignment, :asset => @asset1, :user => @non_admin, :start_date => 1.month.ago.to_date, :end_date => 1.month.from_now.to_date)
      FactoryGirl.create(:assignment, :asset => @asset2, :user => @non_admin, :start_date => 1.month.ago.to_date, :end_date => 1.month.from_now.to_date)
      @at.unassigned_asset_count.should == 0
    end
  end

  context :total_asset_count do
    before do
      @at = FactoryGirl.create(:asset_type)
      @non_admin = FactoryGirl.create(:user)
      @asset1 = FactoryGirl.create(:asset, :asset_type => @at)
      @asset2 = FactoryGirl.create(:asset, :asset_type => @at)
    end

    it "should return total num of assets" do
     FactoryGirl.create(:assignment, :asset => @asset1, :user => @non_admin, :start_date => 1.month.ago.to_date, :end_date => 1.month.from_now.to_date)
     @at.total_asset_count.should == 2
    end

  end
end
