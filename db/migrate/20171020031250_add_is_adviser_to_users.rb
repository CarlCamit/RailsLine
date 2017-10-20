class AddIsAdviserToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :is_adviser, :boolean
  end
end
