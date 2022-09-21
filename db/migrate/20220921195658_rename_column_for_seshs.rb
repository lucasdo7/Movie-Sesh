class RenameColumnForSeshs < ActiveRecord::Migration[6.1]
  def change
    rename_column :seshs, :date, :sesh_date
    rename_column :seshs, :hour, :sesh_hour
  end
end
