require 'spec_helper'
require 'factory_girl'

describe ApplicationController do
  before do
    @admin = FactoryGirl.create(:admin)
    RubyCAS::Filter.fake('homer')
  end

  it "should show home page" do
    get :root
    response.should be_success
  end
end