class AddUserAvatarImageToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avatar_image_data, :text
  end
end
