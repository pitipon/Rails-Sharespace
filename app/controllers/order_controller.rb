class OrderController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path(@order)
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(params)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end

  private
  def order_params
    params.require(:order).permit(:workspace_id, :order_id, :start_date, :end_date)
  end
end
