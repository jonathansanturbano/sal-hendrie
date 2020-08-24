class BasketItemsController < ApplicationController

  def create
    if !params[:book_id].nil?
      item = Book.find(params[:book_id])
    else
      item = Goodie.find(params[:goody_id])
    end
    item_id = @basket.basketItems.find do |item_to_find|
      item_to_find.buyable == item
    end
    if !item_id.nil?
      @basket_item = BasketItem.find(item_id.id)
      # @basket_item.increment(:quantity)
      @basket_item.update(quantity: @basket_item.quantity + 1)
    else
      @basket_item = BasketItem.new(buyable: item, basket_id: @basket.id)
      @basket_item.save
    end
    redirect_to basket_path
  end

  def destroy
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    redirect_to basket_path
  end

  # private



  # def basket_item_params
  #   params.require(:basket_item).permit(:buyable_type, :basket_id)
  # end
end
