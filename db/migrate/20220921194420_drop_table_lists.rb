class DropTableLists < ActiveRecord::Migration[6.1]
  def change
    drop_table :lists, force: :cascade
  end
end
