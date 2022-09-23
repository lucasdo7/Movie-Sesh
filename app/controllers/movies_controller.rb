class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show]

  def index
    @movies = Movie.all
    @movies = policy_scope(Movie)
  end

  def show
    authorize @movie
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(
      :title, :director, :overview, :rating_imdb,
      :release_year, :runtime, :language,
      :genre, :poster
    )
  end
end
