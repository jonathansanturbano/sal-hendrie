class Book < ApplicationRecord
  has_many_attached :photos
  has_many :basketItems, as: :buyable
end
