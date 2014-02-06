class CreateItemAttributeValues < ActiveRecord::Migration
  def change
    create_table :item_attribute_values do |t|
      t.integer :item_category_attribute_id
      t.integer :item_id
      t.boolean :ifv_boolean
      t.float :ifv_float
      t.integer :ifv_integer
      t.string :ifv_string
      t.text :ifv_text

      t.timestamps
    end
  end
end
