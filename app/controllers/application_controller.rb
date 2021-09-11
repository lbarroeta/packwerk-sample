class ApplicationController < ActionController::Base

  include Pundit

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || dashboard_path
  end

  def after_sending_reset_password_instructions_path_for(resource_name)
    root_path
  end

end
