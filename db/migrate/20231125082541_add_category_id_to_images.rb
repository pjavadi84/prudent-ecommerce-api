class AddCategoryIdToImages < ActiveRecord::Migration[7.0]
  def change
    add_column :images, :category_id, :bigint
    add_index :images, :category_id # Optionally add an index
  end
end
