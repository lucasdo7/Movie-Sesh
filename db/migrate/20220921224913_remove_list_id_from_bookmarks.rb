class RemoveListIdFromBookmarks < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookmarks, :list_id, :references
  end
end
