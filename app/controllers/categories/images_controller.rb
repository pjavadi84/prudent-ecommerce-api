module Categories
    class ImagesController < ApplicationController
      before_action :set_category
  
      def index
        @images = @category.images
      end
  
      def new
        @image = @category.images.new
      end
  
      def create
        @image = @category.images.new(image_params)
        if @image.save
          redirect_to category_images_path(@category)
        else
          render :new
        end
      end
  
      # Add other CRUD actions (show, edit, update, destroy) as needed
  
      private
  
      def set_category
        @category = Category.find(params[:category_id])
      end
  
      def image_params
        params.require(:image).permit(:file, :description) # adjust attributes as per your model
      end
    end
  end