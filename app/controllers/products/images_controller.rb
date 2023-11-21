module Products
    class ImagesController < ApplicationController
      before_action :set_product
  
      def index
        @images = @product.images
      end
  
      def new
        @image = @product.images.new
      end
  
      def create
        @image = @product.images.new(image_params)
        if @image.save
          redirect_to category_product_images_path(@product.category, @product)
        else
          render :new
        end
      end
  
      # Add other CRUD actions (show, edit, update, destroy) as needed
  
      private
  
      def set_product
        @product = Product.find(params[:product_id])
      end
  
      def image_params
        params.require(:image).permit(:file, :description) # adjust attributes as per your model
      end
    end
  end