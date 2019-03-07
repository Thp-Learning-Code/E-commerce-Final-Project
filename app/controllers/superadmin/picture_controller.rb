class Superadmin::PictureController < ApplicationController
  before_action :super_admin_security
  def index
    @picture = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
  end
  
  def edit
    @picture = Picture.find(params[:id])
  end

  def create
  end

  def update
    @picture = Picture.find(params[:id])
      if @food_item.update food_item_params 
      end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:success]="deleted"
  end



  private

  def picture_params
    params.require(:picture).permit(:name, :category, :description, food_images_attributes: [:id, :food_item_id, :avatar]) #-> this is enough (no need to "whitelist")
  end
end
