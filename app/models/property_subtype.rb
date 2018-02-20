class PropertySubtype < ActiveRecord::Base
  has_many :property_subtype_property_types
  has_many :property_types, through: :property_subtype_property_types
end
