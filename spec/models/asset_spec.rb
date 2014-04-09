require 'spec_helper'

describe Asset do
  it { should belong_to(:asset_type) }
  it { should belong_to(:asset_type) }
  it { should have_many(:assignments)}

  before do
    @non_admin = FactoryGirl.create(:user)
    @asset_type = FactoryGirl.create(:asset_type)
    @asset = FactoryGirl.create(:asset, :asset_type => AssetType.first)
  end

  context :unassigned do

    it "should return true for assets with no assignments" do
      @asset.should be_unassigned
    end

    it "should return true for assets with no current assignments" do
      FactoryGirl.create(:assignment, :asset => @asset, :assignee => @non_admin, :start_date => 1.month.ago.to_date, :end_date => 1.day.ago.to_date)
      @asset.should be_unassigned
    end

    it "should return false for assets with current assignments having end date" do
      FactoryGirl.create(:assignment, :asset => @asset, :assignee => @non_admin, :start_date => 1.month.ago.to_date, :end_date => 1.day.from_now.to_date)
      @asset.should_not be_unassigned
    end

    it "should return false for assets with current assignments with nil end date" do
      FactoryGirl.create(:assignment, :asset => @asset, :assignee => @non_admin, :start_date => 1.month.ago.to_date, :end_date => nil)
      @asset.should_not be_unassigned
    end
  end

  it "should return array of properties associated with asset type" do
    @asset.properties.should =~ [:asset_id, :serial]
  end

end