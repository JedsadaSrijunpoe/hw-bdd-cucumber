class MoviegoersController < ApplicationController
    def show
        id = params[:id] # retrieve movie ID from URI route
        @moviegoer = Moviegoer.find(id) # look up movie by unique ID
        # will render app/views/movies/show.<extension> by default
    end
end