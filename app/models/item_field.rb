class ItemField < ActiveRecord::Base
  attr_accessible :data_type, :item_category_id, :label, :item_field_values_attributes

  belongs_to :item_category
  has_many :item_field_values
  has_many :items, :through => :item_field_values
  
  accepts_nested_attributes_for :item_field_values
end
