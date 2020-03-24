class PagesController < ApplicationController
  def home
  end

  def bio
    @illustrators = Illustrator.all
  end
end
