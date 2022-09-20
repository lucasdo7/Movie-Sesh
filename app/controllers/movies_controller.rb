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
      :title, :overview, :rating_imdb,
      :movie_poster, :release_year, :runtime,
      :language, :youtrailler, :watched
    )
  end
end
