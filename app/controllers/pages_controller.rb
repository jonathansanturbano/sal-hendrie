class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @homephotos = Homephoto.all.order(:order)
  end

  def bio
    @illustrators = Illustrator.all
  end
end
