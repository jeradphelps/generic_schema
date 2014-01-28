class CreateItemFieldDataTypes < ActiveRecord::Migration
  def up
    create_table :item_field_data_types do |t|
      t.string :label
      t.string :rails_data_type

      t.timestamps
    end
    remove_column :item_fields, :data_type
    add_column :item_fields, :item_field_data_type_id, :integer
  end

  def down
    drop_table :item_field_data_types
    add_column :item_fields, :data_type, :string
    remove_column :item_fields, :item_field_data_type_id
  end
end
