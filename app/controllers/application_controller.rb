class ApplicationController < ActionController::Base

  include CurrentCart
  before_action :set_cart
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :description])
   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :description, :avatar])
 end

#User Security
def check_if_user_is_current_user
  @user = User.find(params[:id])
if current_user.id != @user
  flash[:success]="Degage Escroc"
  redirect_to root_path
end

end


end
