class MoviesController < ApplicationController
  def home
  end

  def index
    @movies = Movie.all
  end
end
