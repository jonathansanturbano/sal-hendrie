class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_basket

  private

  def set_basket
    @basket = Basket.find_by(user_id: current_user, status: "adding") || Basket.create(user_id: current_user, status: "adding") if user_signed_in?
  end
end
