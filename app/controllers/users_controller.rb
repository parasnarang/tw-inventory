class UsersController < ApplicationController

  def admin_dashboard
  end

  def employee_dashboard
    @assignments = Assignment.where(assigned_to: session[:cas_user])
  end

end