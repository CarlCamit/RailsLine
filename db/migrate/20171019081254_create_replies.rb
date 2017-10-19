class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.references :adviser, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end