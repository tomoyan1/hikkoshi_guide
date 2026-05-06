class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
   
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :old_zipcode, :old_address, :new_zipcode, :new_address, :move_out_date, :move_in_date])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :old_zipcode, :old_address, :new_zipcode, :new_address, :move_out_date, :move_in_date])
  end
end