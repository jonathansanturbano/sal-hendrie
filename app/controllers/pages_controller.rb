class PagesController < ApplicationController
  def home
    @homephotos = Homephoto.all
  end

  def bio
    @illustrators = Illustrator.all
  end
end
