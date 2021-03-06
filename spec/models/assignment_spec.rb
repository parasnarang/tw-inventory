require 'spec_helper'

describe Assignment do
  it {should belong_to(:assignee)}
  it {should belong_to(:asset)}
  it {should validate_presence_of(:asset)}
  it {should validate_presence_of(:assignee_id)}
  it {should validate_presence_of(:start_date)}

  context :current do

    before do
      @non_admin = FactoryGirl.create(:user)
      @asset_type = FactoryGirl.create(:asset_type)
      @asset = FactoryGirl.create(:asset, :asset_type => AssetType.first)
      @assignment = FactoryGirl.create(:assignment, :asset => @asset, :assignee => @non_admin, :start_date => 1.month.ago.to_date, :end_date => nil)
    end

    it "should return true if assignment end date is nil" do
      @assignment.should be_current
    end

    it "should return true if assignment end date is in future" do
      @assignment.update_attributes(:end_date => 1.month.from_now)
      @assignment.should be_current
    end

    it "should return false if assignment end date has passed" do
      @assignment.update_attributes(:end_date => 1.month.ago)
      @assignment.should_not be_current
    end

  end
end