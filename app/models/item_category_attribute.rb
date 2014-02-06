class ItemCategoryAttribute < ActiveRecord::Base
  attr_accessible :item_category_attribute_data_type_id, :item_category_id, :label, :item_attribute_values_attributes

  belongs_to :item_category
  belongs_to :item_category_attribute_data_type
  has_many :item_attribute_values
  has_many :items, :through => :item_attribute_values
  
  accepts_nested_attributes_for :item_attribute_values

  validates_presence_of :label, :item_category_attribute_data_type
end

