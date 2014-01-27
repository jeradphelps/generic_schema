class ItemFieldValue < ActiveRecord::Base
  attr_accessible :ifv_boolean, :ifv_float, :ifv_integer, :ifv_string, :ifv_text, :item_field_id, :item_id

  belongs_to :item_field
  belongs_to :item

  def value
    if self.item_field.data_type == "True/False"
      return self.ifv_boolean
    elsif self.item_field.data_type == "Number"
      return self.ifv_float
    elsif self.item_field.data_type == "Integer"
      return self.ifv_integer
    elsif self.item_field.data_type == "String"
      return self.ifv_string
    elsif self.item_field.data_type == "Long Text"
      return self.ifv_text
    end
  end
end
