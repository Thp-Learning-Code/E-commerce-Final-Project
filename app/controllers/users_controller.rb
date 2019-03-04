class UsersController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound, with: :users_not_found
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]

  def show
     @user = User.find(params[:id])
  end


  private

  def users_not_found
    redirect_to root_url, alert: t(".users_not_found")
  end

end
