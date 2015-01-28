class MoviesController < ApplicationController

  def index
    @movies = Movie.order("title ASC")
  end

  def show
    @movie = Movie.find_by({ :id => params["id"] })
  end

end
