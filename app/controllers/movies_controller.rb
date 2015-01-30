class MoviesController < ApplicationController
  def create_row
    @movie = Movie.new
    @movie.title = params["the_title"]
    @movie.year = params["the_year"]
    @movie.duration = params["the_duration"]
    @movie.description = params["the_description"]
    @movie.image_url = params["the_image_url"]

    @movie.save
  end

  def new_form

  end

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
