class PagesController < ApplicationController
  def home
    @homephotos = Homephoto.all.order(:order)
  end

  def bio
    @illustrators = Illustrator.all
  end

  def basket
    @order = Order.new
    # (order_params)
  end

  # private

  # def order_params
  #   params.require(:order).permit(:products)
  # end
end
