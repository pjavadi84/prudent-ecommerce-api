class ProductsController < ApplicationController
    def index
      # Logic to fetch and return products
      # For example, you can return all products:
      @products = Product.all
      render json: @products
    end
end
  