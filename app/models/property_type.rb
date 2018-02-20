class PropertyType < ActiveRecord::Base
  has_many :properties
  has_many :property_subtypes, through: :properties
end
