class FanartsController < ApplicationController
  def index
    @fanarts = Fanart.all
  end
end
