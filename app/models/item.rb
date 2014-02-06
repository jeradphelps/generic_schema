class Item < ActiveRecord::Base
  attr_accessible :item_category_id, :item_category_attributes, :item_attribute_values_attributes

  belongs_to :item_category
  has_many :item_attribute_values
  has_many :item_category_attributes, :through => :item_attribute_values

  accepts_nested_attributes_for :item_category
  accepts_nested_attributes_for :item_attribute_values
end
