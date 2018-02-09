class ChangeDefaulutColumnToAlbums < ActiveRecord::Migration[5.1]
  def change
  	change_column :albums, :is_public, :boolean, :default => false
  end
end
