class AddAdviserAvatarImageToAdviser < ActiveRecord::Migration[5.1]
  def change
    add_column :advisers, :avatar_image, :text
  end
end
