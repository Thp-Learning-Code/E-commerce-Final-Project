class Superadmin::UsersController < ApplicationController
   before_action :authorize_admin

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success]="deleted"
  end
end
