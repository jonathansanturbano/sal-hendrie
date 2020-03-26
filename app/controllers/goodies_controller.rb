class GoodiesController < ApplicationController
  def index
    @goodies = Goodie.all
  end

  def show
    @goodie = Goodie.find(params[:id])
  end
end
