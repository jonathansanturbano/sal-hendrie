class Basket < ApplicationRecord
  belongs_to :user
  has_many :books
  has_many :goodies
end
