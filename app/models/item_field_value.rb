class ItemFieldValue < ActiveRecord::Base
  attr_accessible :ifv_boolean, :ifv_float, :ifv_integer, :ifv_string, :ifv_text, :item_field_id, :item_id

  belongs_to :item_field
  belongs_to :item

  def value
    "todo complete me.  I am a wrapper for pulling the one value that is set based on my item_field.type"
  end
end
