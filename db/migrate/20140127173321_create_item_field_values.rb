class CreateItemFieldValues < ActiveRecord::Migration
  def change
    create_table :item_field_values do |t|
      t.integer :item_field_id
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
