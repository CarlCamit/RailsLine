class AddAdviserAvatarImageToAdviser < ActiveRecord::Migration[5.1]
  def change
    add_column :advisers, :avatar_image_data, :text
  end
end
