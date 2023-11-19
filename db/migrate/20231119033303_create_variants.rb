class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.references :product, null: false, foreign_key: true
      t.string :size
      t.string :color
      t.decimal :price
      t.integer :quantity_in_stock

      t.timestamps
    end
  end
end
