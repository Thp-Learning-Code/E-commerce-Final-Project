class UsersController < ApplicationController
  before_action :check_if_user_is_current_user, only: [:edit,:update]

  def show
    @user = User.find(params[:id])
  end


  private

  # def users_not_found
  #   redirect_to root_url, alert: t("users_not_found")
  # end

end
