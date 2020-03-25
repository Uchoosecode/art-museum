class HomeController < ApplicationController

    def index
        @users = User.all
        
        @galleries = Gallery.all
    end

end
