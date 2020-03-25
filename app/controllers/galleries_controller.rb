class GalleriesController < ApplicationController
before_action :authenticate_user!

    def index
        @galleries = Gallery.all         
    end
    
    def show
        @gallery = params_id
    end

    def new
        @gallery = Gallery.new
    end

    def create
        @gallery = Gallery.create(gallery_params)

        if @gallery.valid?

            redirect_to gallery_path(@gallery)
        else
            render :new
        end
    end

    def edit
        @gallery =  params_id    
    end

    def update

        
    end

private

    def gallery_params
        params.require(:gallery).permit(:title, :description, :image_url, :user_id, :category_name, :medium, images: [])        
    end

    def params_id
        Gallery.find(params[:id])
    end
end

