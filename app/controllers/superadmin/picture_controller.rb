class Superadmin::PictureController < ApplicationController
  def index
    @picture = Picture.all
  end

  def show
  end

  def new
  end
  
  def edit

  end

  def create
  end

  def update
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:success]="deleted"
  end
end
