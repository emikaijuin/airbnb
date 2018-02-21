class ApplicationController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def allowed?(action, user)
    if action == edit
      return true if user == current_listing.user || user.superadmin
    else
      return false
    end
  end
  
end
