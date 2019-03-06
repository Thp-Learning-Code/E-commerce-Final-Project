# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include CurrentCart
  before_action :set_cart
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name description])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name description avatar])
  end
end
