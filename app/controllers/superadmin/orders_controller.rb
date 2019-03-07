class Superadmin::OrdersController < ApplicationController
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
