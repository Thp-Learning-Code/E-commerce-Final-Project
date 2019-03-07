class Superadmin::UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
  end

  def new
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
