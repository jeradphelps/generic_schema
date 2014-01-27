class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_category_id

      t.timestamps
    end
  end
end
