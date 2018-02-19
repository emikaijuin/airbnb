class Keyword < ActiveRecord::Base
  
  has_many :listings, through: :keyword_listings
    
end
