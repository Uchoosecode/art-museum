class CommentsController < ApplicationController

    def index
        @comments = Comment.all
    end

    def new
        @comment = Comment.new
    end

    def show
        @comment = comment_id
    end

    def create
        @comment = Comment.create(category_params) 
            if @comment.valid?

                redirect_to comment_path(@comment)

            else
                render :'/comment/new'
            end
    end

    def edit
        @comment = comment_id
    end

    def update
        if @comment.update(comment_params)
            redirect_to comment_path(@comment)
        else
            render :'/comment/edit'
        end
    end
        

private

    def comment_params
        params.require(:comment).permit(:name)
    end

    def comment_id
        comment.find(params[:id])        
    end
end
