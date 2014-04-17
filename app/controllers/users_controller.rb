class UsersController < ApplicationController

  def employee_dashboard
    @assignments = Assignment.where(assigned_to: session[:cas_user])
  end

end