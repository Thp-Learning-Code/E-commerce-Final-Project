class Superadmin::PictureController < ApplicationController
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
      if @picture.update picture_params 
      end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:success]="deleted"
  end



  private

  def picture_params
    params.require(:picture).permit(:name, :condition, :description,  :price,:chat_pic) #-> this is enough (no need to "whitelist")
  end
end
