class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def delete
    @movie = movie.find(params[:id])
    @movie.destroy
    # No need for app/views/movies/destroy.html.erb
    redirect_to root_path
  end
end
