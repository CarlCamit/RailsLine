class CreateCategorisations < ActiveRecord::Migration[5.1]
  def change
    create_table :categorisations do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps
    end

    add_index :categorisations, [:post_id, :category_id]
  end
end
