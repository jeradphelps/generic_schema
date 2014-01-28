class ItemFieldValue < ActiveRecord::Base
  attr_accessible :ifv_boolean, :ifv_float, :ifv_integer, :ifv_string, :ifv_text, :item_field_id, :item_id

  belongs_to :item_field
  belongs_to :item

  def value
    if self.item_field.item_field_data_type.rails_data_type == "boolean"
      return self.ifv_boolean
    elsif self.item_field.item_field_data_type.rails_data_type == "float"
      return self.ifv_float
    elsif self.item_field.item_field_data_type.rails_data_type == "integer"
      return self.ifv_integer
    elsif self.item_field.item_field_data_type.rails_data_type == "string"
      return self.ifv_string
    elsif self.item_field.item_field_data_type.rails_data_type == "text"
      return self.ifv_text
    end
  end
end

