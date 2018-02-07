class ChangeColumnToPictures < ActiveRecord::Migration[5.1]
  def change
  	change_column :pictures, :is_public, :boolean, default: true
  end
end
