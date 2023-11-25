module CategoryModule
  class CategoriesController < ApplicationController
    
    def index
      @categories = Category.includes(:images).all
      render json: @categories.as_json(include: :images)
    end
    
  end
end
