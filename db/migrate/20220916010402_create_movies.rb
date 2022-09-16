class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :overview
      t.float :rating_imdb
      t.string :movie_poster
      t.integer :release_year
      t.string :runtime
      t.string :language
      t.string :youtrailler
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
