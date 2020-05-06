class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to 'pages#home'
    else
      render 'new'
    end
  end

  private

  def order_params
    params.require(:order).permit(:products)
  end
end
