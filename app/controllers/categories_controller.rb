class CategoriesController < ApplicationController

    def index
        @categories = Category.all    
    end
   
    def new
        @category = Category.new(categories_params)
    end

    def create 
        @category = Category.create(categories_params)
    end

private
    
   def categories_params
       params.require(:category).permit(:name, gallery_id: [], artwork_id: [])
   end
end