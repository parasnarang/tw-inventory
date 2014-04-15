class UsersController < ApplicationController

  def admin_dashboard
  end

  def employee_dashboard
    @assignments = User.find_by(ad_id: session[:cas_user]).assignments
  end

end