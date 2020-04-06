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
        @gallery = params_id
    end
    
    def update
        @gallery = params_id
        @gallery.update(gallery_params)

        redirect_to gallery_path(@gallery)
    end

    def destroy
        @gallery = params_id
        @gallery.delete

        redirect_to user_session_path
    end

private

    def gallery_params
        params.require(:gallery).permit(:title, :user_id, :description)
    end

    def params_id
        Gallery.find(params[:id])
    end

end