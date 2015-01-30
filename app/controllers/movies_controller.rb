class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params["id"] })
  end

  def destroy
    @movie = Movie.find_by({ :id => params["id"] })

    @movie.destroy
  end

end
