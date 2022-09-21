class AddColumnToBookmarks < ActiveRecord::Migration[6.1]
  def change
    add_column :bookmarks, :watched, :boolean
  end
end
