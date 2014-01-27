class CreateItemFields < ActiveRecord::Migration
  def change
    create_table :item_fields do |t|
      t.integer :item_category_id
      t.string :label
      t.string :data_type

      t.timestamps
    end
  end
end
