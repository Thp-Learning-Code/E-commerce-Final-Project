# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include CurrentCart
  before_action :set_cart
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

#User Security
def check_if_user_is_current_user
  @user = User.find(params[:id])
if current_user.id != @user
  flash[:success]="Degage Escroc"
  redirect_to root_path
end
end


def check_if_user_is_administrator_of_product_pic
  @picture = Picture.find(params[:id])
  if user_signed_in? && current_user.id != @picture.administrator_id
    flash[:danger]="oh moussaillon tu fais quoi ici"
    redirect_to root_path

  elsif !user_signed_in?
    flash[:danger]="oh moussaillon tu fais quoi ici"
    redirect_to root_path
  end
end



  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_nme last_name description])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name description avatar])
  end
end
