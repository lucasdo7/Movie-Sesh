class RemoveColumnsFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :movie_poster
    remove_column :movies, :youtrailler
    remove_column :movies, :watched
  end
end
