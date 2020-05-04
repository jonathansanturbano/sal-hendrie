class PagesController < ApplicationController
  def home
    @homephotos = Homephoto.all.order(:order)
  end

  def bio
    @illustrators = Illustrator.all
  end

  def basket
  end
end
