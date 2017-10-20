class CreateCategorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :categorizations do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps
    end

    add_index :categorizations, [:post_id, :category_id]
  end
end
