class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.references :profile, foreign_key: true
      t.text :subject
      t.text :body

      t.timestamps
    end
  end
end
