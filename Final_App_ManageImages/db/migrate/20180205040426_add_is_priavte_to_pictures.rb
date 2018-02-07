class AddIsPriavteToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :is_priavte
  end
end
