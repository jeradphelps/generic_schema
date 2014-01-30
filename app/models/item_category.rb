class ItemCategory < ActiveRecord::Base
  attr_accessible :name, :item_fields_attributes

  has_many :item_fields
  has_many :items
  
  accepts_nested_attributes_for :item_fields

  validates_presence_of :name
end
