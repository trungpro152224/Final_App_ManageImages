class ChangeColumnToAlbums < ActiveRecord::Migration[5.1]
  def change
  	change_column :albums, :is_public, :boolean, default: true
  end
end
