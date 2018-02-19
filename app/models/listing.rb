class Listing < ActiveRecord::Base
  
  has_many :keywords, through: :keyword_listings
  
    def is_available?(start_date, end_date)
        # method to return true or false if listing is available for selected date range
    end
    
end
