class ChangeNameFieldToPicture < ActiveRecord::Migration[5.1]
  def change

  	rename_column :pictures, :is_priavte, :is_public
  end
end
