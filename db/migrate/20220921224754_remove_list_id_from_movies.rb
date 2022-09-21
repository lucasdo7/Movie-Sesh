class RemoveListIdFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :list_id, :references
  end
end
