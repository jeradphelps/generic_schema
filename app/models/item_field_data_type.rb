class ItemFieldDataType < ActiveRecord::Base
  attr_accessible :label, :rails_data_type

  has_many :item_fields
end
