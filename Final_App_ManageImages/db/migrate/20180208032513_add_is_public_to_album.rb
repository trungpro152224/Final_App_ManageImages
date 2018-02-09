class AddIsPublicToAlbum < ActiveRecord::Migration[5.1]
  def change
  	 add_column :albums, :is_public, :boolean
  end
end
