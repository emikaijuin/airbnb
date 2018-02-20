class PropertySubtypePropertyType < ActiveRecord::Base
  belongs_to :property_type
  belongs_to :property_subtype
  belongs_to :listing
end
