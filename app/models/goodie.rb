class Goodie < ApplicationRecord
  has_many_attached :photos
  has_many :baskets
end
