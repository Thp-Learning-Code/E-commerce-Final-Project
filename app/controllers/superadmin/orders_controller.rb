class Superadmin::OrdersController < ApplicationController
   before_action :authorize_admin
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])

  end

  def edit
  end

  def update
  end

  def destroy
    @order.destroy
    flash[:success]="deleted"
  end
end
