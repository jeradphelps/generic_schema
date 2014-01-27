class Item < ActiveRecord::Base
  attr_accessible :item_category_id, :item_category_attributes, :item_field_values_attributes

  belongs_to :item_category
  has_many :item_field_values
  has_many :item_fields, :through => :item_field_values

  accepts_nested_attributes_for :item_category
  accepts_nested_attributes_for :item_field_values
end
