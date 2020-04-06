class CommentsController < ApplicationController
    before_action :artwork_params
    
    def new
        @comment = Comment.new
    end

    def create 
        @comment = current_user.comments.create(comment_params)

        redirect_to artwork_path(@artwork.id)
       
    end

    def destroy
        @comment = @artwork.comments.find(params[:id])
        @comment.destroy
       
        redirect_to gallery_artworks_path(@artwork)
    end

private

    def artwork_params
        @artwork = Artwork.find_by_id(params[:artwork_id])
    end

    def comment_params
        params.require(:comment).permit(:artwork_id, :content)
    end
    
end