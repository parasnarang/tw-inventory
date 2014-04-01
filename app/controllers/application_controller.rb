class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter RubyCAS::Filter
  append_before_filter :authenticate
  append_before_filter :authorize!, :except => :logout, :except => :employee_dashboard
  #helper_method :current_user

  def logout
    RubyCAS::Filter.logout self
  end

  private
  def authenticate
    #@current_user = User.where(:ad_id => session[:cas_user]).first
    @current_username = session[:cas_user]
  end

  def authorize!
    redirect_to employee_dashboard_path unless User.admin?(@current_username)
  end

  #def current_username
  #  @current_username
  #end
end
