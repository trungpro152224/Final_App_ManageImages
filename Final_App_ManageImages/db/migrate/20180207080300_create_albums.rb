class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.boolean :is_private, default: false

      t.timestamps
    end
  end
end
