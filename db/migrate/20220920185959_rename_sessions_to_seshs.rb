class RenameSessionsToSeshs < ActiveRecord::Migration[6.1]
  def change
    rename_table :sessions, :seshs
  end
end
