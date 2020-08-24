class BasketItem < ApplicationRecord
  belongs_to :basket
  belongs_to :buyable, polymorphic: true
end
