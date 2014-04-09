require 'spec_helper'

describe AssignmentsController do
  before do
    @admin = FactoryGirl.create(:user, :role => 'Admin')
    #@non_admin = FactoryGirl.create(:user, :role => nil)
    @at = FactoryGirl.create(:asset_type)
    @asset = FactoryGirl.create(:asset, :asset_type => @at)
    RubyCAS::Filter.fake('parasnar')
  end

  context :create do
    it "should create new assignment for an employee" do
      post :create, :assignment => {:category => 'Employee Assignment', :assignee_id => 'ishak',
           :start_date => 2.days.from_now}, :asset_id => @asset.id
      @asset.assignments.count.should == 1
    end

    it "should render show again if assignment is not successfully created" do
      post :create, :assignment => {:category => 'Employee Assignment', :assignee_id => '',
           :start_date => 2.days.from_now}, :asset_id => @asset.id
      response.should redirect_to(asset_path(@asset))
    end

  end

end