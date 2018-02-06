class AddIsPriavteToAnbums < ActiveRecord::Migration[5.1]
  def change
    add_column :anbums, :is_priavte, :boolean
  end
end
