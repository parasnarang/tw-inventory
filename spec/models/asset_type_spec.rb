require 'spec_helper'

describe AssetType do

  it {should validate_presence_of(:properties)}
  it {should validate_presence_of(:name)}
  it {should have_many(:assets)}

  it "should insert timestamps on create" do
    at = FactoryGirl.create(:asset_type)
    at.created_at.should_not be_nil
    at.updated_at.should_not be_nil
  end

end
