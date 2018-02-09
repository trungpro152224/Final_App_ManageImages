class AddAlbumsIdToPicture < ActiveRecord::Migration[5.1]
  def change
   add_reference :pictures, :albums, index: true	
  end
end
