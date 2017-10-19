class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :avatar_image_data
      t.boolean :is_adviser

      t.timestamps
    end
  end
end
