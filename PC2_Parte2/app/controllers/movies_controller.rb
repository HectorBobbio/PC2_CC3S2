class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def new
    end

    def show
        id = params[:id]
        begin
          @movie = Movie.find(id) 
        rescue ActiveRecord::RecordNotFound
            redirect_to movies_path, notice: "No se encuentra una pelicula con este ID"
        end
    end

end
