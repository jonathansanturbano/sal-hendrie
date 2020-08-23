class BasketsController < ApplicationController
  # TAKE OUT WHEN SUCCESSFULLY TESTED

  def show
    @basket = Basket.find_by(user_id: current_user, status: "adding")
    # @basket.items.each do |item|

    # end
  end

  def create
    @basket = Basket.new(basket_params)
    @basket.items << params[:basket][:item]
    @basket.save
    redirect_to root_path
  end

  private

  def basket_params
    params.require(:basket).permit(:user_id, :item)
  end
end
