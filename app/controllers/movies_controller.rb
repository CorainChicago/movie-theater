class MoviesController < ApplicationController

  def index
    @movies = Movie.all?
    @movies.each do |movie|
       
  end
end
