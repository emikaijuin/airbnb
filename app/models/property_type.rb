class PropertyType < ActiveRecord::Base
  has_many :property_subtype_property_types
  has_many :property_subtypes, through: :property_subtype_property_types
end
