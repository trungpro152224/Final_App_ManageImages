class CreateAnbums < ActiveRecord::Migration[5.1]
  def change
    create_table :anbums do |t|
      t.string :name
      t.string :title
      t.text :description
    end
  end
end
