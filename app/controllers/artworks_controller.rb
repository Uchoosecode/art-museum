class ArtworksController < ApplicationController
    before_action :gallery_params, only: [:new, :show, :index]
    
    def index
       
        if params[:gallery_id]
           
            @artworks = @gallery.artworks
        else
            @artworks = Artwork.all
        end
        
        # controller for search
        if params[:search]
            @search_term = params[:search]
            @artworks = @artworks.search_by(@search_term)
        end
    end
    
    def new
        @artwork = @gallery.artworks.build
    end
    
    
    def create     
        @artwork = Artwork.create(artwork_params)
        if @artwork.valid?
            redirect_to gallery_artworks_path(@artwork)
        else
            render :new
        end
    end
    
    def show
        @artwork = Artwork.find(params[:id])
        @comment = @artwork.comments.build
    end

private 
    
    def gallery_params
        @gallery = Gallery.find_by(params[:gallery_id])
    end
    
    def artwork_params
        params.require(:artwork).permit(:title, :category_id, :medium_id, :image, :gallery_id)
    end

end