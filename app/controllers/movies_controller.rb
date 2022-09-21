class MoviesController < ApplicationController
  def index
    # @movies = Movie.all
    @movies = policy_scope(Movie)
  end

  def show
    @movie = Movie.find(params[:id])
    authorize @movie
  end

  def search
  end

  private

  def movie_params
    params.require(:movie).permit(
      :title, :director, :overview, :rating_imdb,
      :release_year, :runtime, :language
    )
  end
end
