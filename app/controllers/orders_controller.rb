class OrdersController < ApplicationController
  layout :resolve_layout

  before_action :set_workspace, only: [:new_by_user]
  before_action :set_user, only: [:new_by_user]
  


  def new_by_user
    # @user
    # @workspace
  end

  # def index
  #   @orders = Order.all
  # end
  #
  # def show
  #   @order = Order.find(params[:id])
  # end
  #
  # def new
  #   @workspace = Workspace.find(params[:workspace_id])
  #
  #   @order = @workspace.orders.new
  # end
  #
  # def create
  #   @order = Order.new(order_params)
  #   if @order.save
  #     redirect_to order_path(@order)
  #   else
  #     render :new
  #   end
  # end
  #
  # def edit
  #   @order = Order.find(params[:id])
  # end
  #
  # def update
  #   @order = Order.find(params[:id])
  #   @order.update(params)
  # end
  #
  # def destroy
  #   @order = Order.find(params[:id])
  #   @order.destroy
  # end
  #
  # def list_by_user
  #   @orders = Order.find(params[:user_id])
  # end
  #
  # def approve
  #   redirect_to order_path(@order)
  # end
  #
  # def reject
  #   redirect_to order_path(@order)
  # end
  #
  # def confirm
  #   redirect_to order_path(@order)
  # end

  private


  # find user by id
  def set_workspace
    @workspace = Workspace.find(params[:workspace_id])
  end

  # find user by id
  def set_user
    @user = User.find(params[:user_id])
  end

  # find owner by id
  def set_owner
    @owner = Owner.find(params[:owner_id])
  end

  def resolve_layout
    case action_name
    when "show_by_owner"  # [:index, :show, :new, :create]
      "owner"
    when "new_by_user"
      "user"
    else
      "application"
    end
  end

  def order_params
    params.require(:order).permit(
      :workspace_id,
      :order_id,
      :start_date,
      :end_date)
  end
end
