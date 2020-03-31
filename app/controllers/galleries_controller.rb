class GalleriesController < ApplicationController
before_action :authenticate_user!, :current_user, :params_id, only: [:show, :edit, :update]

    def index
        @galleries = Gallery.all
    end
    
    def show     
    end

    def new
        @gallery = Gallery.new   
        @gallery.categories.build
        @gallery.media.build
    end

    def create
        @gallery = Gallery.create(gallery_params)
            
        if @gallery.valid?
            redirect_to gallery_path(@gallery)
        else
            render :new
        end
    end
    

private

    def gallery_params
        params.require(:gallery).permit(:title, :user_id, :category_name, :medium_name)
    end

    def params_id
        @gallery = Gallery.find(params[:id])
    end
end