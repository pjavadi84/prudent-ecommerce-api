class Category < ApplicationRecord
   has_many :images, as: :imageable
   has_many :products
end
