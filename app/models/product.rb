class Product < ApplicationRecord
   has_many :variants
   has_many :images, as: :imageable
   belongs_to :category
end
