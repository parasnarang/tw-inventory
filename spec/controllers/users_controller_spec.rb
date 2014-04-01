require 'spec_helper'
require 'factory_girl'

describe UsersController do
  before do
    @admin = FactoryGirl.create(:user, :role => 'Admin')
    @non_admin = FactoryGirl.create(:user, :role => nil, :ad_id => 'aaaa')
  end

  it "should render employee dashboard if current user is users" do
    RubyCAS::Filter.fake('aaaa')
    get :employee_dashboard
    response.should render_template('employee_dashboard')
  end

  it "should render admin dashboard if current user is users" do
    RubyCAS::Filter.fake('parasnar')
    get :admin_dashboard
    response.should render_template('admin_dashboard')
  end

end