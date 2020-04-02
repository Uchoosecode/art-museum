class MediaController < ApplicationController
# before_action :auth_user 

    def index
        @media = Medium.all    
    end
   
    def new
        @medium = Medium.new(media_params)
    end

    def create 
        @medium = Medium.create(media_params)
    end

private

    # def auth_user
    #     if current_user.email == ayako@email.com
    #     end    
    # end

    def media_params
        params.require(:media).permit(:medium_name, gallery_id: [], artwork_id: [])
    end
end