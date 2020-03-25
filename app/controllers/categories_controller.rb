class CategoriesController < ApplicationController

    def index
        @categories = Category.all
    end

    def new
        @category = Category.new
    end

    def show
        @category = category_id
    end

    def create
        @category = Category.create(category_params) 
            if @category.valid?

                redirect_to category_path(@category)

            else
                render :'/category/new'
            end
    end

    def edit
        @category = category_id
    end

    def update
        if @category.update(category_params)
            redirect_to category_path(@category)
        else
            render :'/category/edit'
        end
    end
        

private

    def category_params
        params.require(:category).permit(:name)
    end

    def category_id
        Category.find(params[:id])        
    end
end
