class ChangeNameToAlbums < ActiveRecord::Migration[5.1]
  def change

  	rename_column :albums, :is_private, :is_public
  end
end
