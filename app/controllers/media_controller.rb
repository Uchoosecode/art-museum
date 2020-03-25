class MediaController < ApplicationController

    def index
        @media = Medium.all
    end

    def new
        @medium = Medium.new
    end

    def show
        @medium = media_id
    end

    def create
        @medium = Medium.create(media_params) 
            if @medium.valid?

                redirect_to media_path(@medium)

            else
                render :'/media/new'
            end
    end

    def edit
        @medium = media_id
    end


private

    def media_params
        params.require(:media).permit(:name)
    end

    def media_id
        Medium.find(params[:id])        
    end
end
