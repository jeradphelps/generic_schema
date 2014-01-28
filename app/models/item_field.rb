class ItemField < ActiveRecord::Base
  attr_accessible :item_field_data_type_id, :item_category_id, :label, :item_field_values_attributes

  belongs_to :item_category
  belongs_to :item_field_data_type
  has_many :item_field_values
  has_many :items, :through => :item_field_values
  
  accepts_nested_attributes_for :item_field_values
end

