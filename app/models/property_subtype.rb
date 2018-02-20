class PropertySubtype < ActiveRecord::Base
  has_many :properties
  has_many :property_types, through: :properties
end
