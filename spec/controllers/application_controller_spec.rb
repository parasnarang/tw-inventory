require 'spec_helper'

describe ApplicationController do
  before do
    @admin = FactoryGirl.create(:user)
    RubyCAS::Filter.fake('homer')
  end

  it 'should call CAS logout function for Logout action' do
    get :logout
    response.should redirect_to('https://cas.thoughtworks.com/cas/logout')
  end
end