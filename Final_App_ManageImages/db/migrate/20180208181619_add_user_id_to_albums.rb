class AddUserIdToAlbums < ActiveRecord::Migration[5.1]
  def change
  	add_reference :albums, :user, index: true
  end
end
