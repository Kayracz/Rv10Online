class OrdersController < ApplicationController
 skip_before_action :authenticate_user!, only: :new
 before_action :set_order, except: [:new, :create]

 def show
 end

 def new
  @product = Product.find(params[:product_id])
  @order = Order.new
end


def create
  @order = Order.new
  @order.delivery_type = orders_params[:delivery_type]
  @order.itemqte = orders_params[:itemqte]
  @order.status = "pending"
  @order.address = orders_params[:address]

  @Product = Product.find(params[:product_id])
  @order.product = @product
  @order.user = current_user
  @order.amount = @product.price * @order.itemqte

  if @order.save
    redirect_to new_order_path(@order)
  else
    render :new
  end
end

def update
end

def update_delivered
  @order.update(status: params[:status])
    # redirect_to dashboard_path

    respond_to do |format|
      format.html { redirect_to new_order_path }
    end
  end


  def destroy
    @order.destroy
    redirect_to new_order_path
  end


  private

  def orders_params
    params.require(:order).permit(:user_id, :product_id, :status, :delivery_type, :address, :quantity_id, :totalprice)
  end

  def set_order
    @order = Order.find(params[:id])
  end
end

