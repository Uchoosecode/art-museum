class ArtworksController < ApplicationController
before_action :gallery_params, only: [:new, :index, :create]

    def index
        if @gallery
            @artwork = @gallery.artworks.all
        else 
            @artwork = Artwork.all
        end
        @comment = Comment.create(params.permit(:name, :content))

    end

    def new
        @artwork = @gallery.artworks.new
    end

    def create
      
        @artwork = @gallery.artworks.create(artwork_params)
            if @artwork.valid?
                redirect_to gallery_artworks_path(@artwork)
            else
                render :new
            end
    end

    def show
        # binding.pry       
        @artwork = Artwork.find_by(params[:artwork_id])
    end
    
    def destroy
        
    end

private 

    def gallery_params
        @gallery = Gallery.find_by(id: params[:gallery_id])
    end

    def artwork_params
        params.require(:artwork).permit(:title, :category_id, :medium_id, :image, :gallery_id)
    end
end