require 'spec_helper'
require 'factory_girl'

describe ApplicationController do
  before do
    @admin = FactoryGirl.create(:user)
    RubyCAS::Filter.fake('homer')
  end
end