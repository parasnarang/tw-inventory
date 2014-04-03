require 'spec_helper'

describe User do
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:ad_id)}
  it { should have_many(:assignments)}

  context :admin do
    before do
      @admin = FactoryGirl.create(:user, :role => 'Admin')
      @non_admin = FactoryGirl.create(:user, :ad_id => 'nonadmin')
    end

    it "should return true for an admin user" do
      User.admin?(@admin.ad_id).should be_true
    end

    it "should return false for a non admin user" do
      User.admin?(@non_admin.ad_id).should be_false
    end
  end

end