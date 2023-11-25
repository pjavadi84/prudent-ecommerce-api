class RemoveNotNullConstraintFromImages < ActiveRecord::Migration[7.0]
  def change
    change_column_null :images, :product_id, true
  end
end
