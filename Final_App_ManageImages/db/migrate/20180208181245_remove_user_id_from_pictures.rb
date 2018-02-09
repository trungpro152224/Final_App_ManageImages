class RemoveUserIdFromPictures < ActiveRecord::Migration[5.1]
  def change
  	remove_reference(:pictures, :user, index: true)
  end
end
