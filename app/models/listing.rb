class Listing < ActiveRecord::Base
  
  has_many :keywords, through: :keyword_listings
  
    def is_available?(start_date, end_date)
        # method to return true or false if listing is available for selected date range
    end
    
    def host
      if self.user_id == nil
        "Mystery house!"
      else
        User.find(self.user_id).first_name
      end
    end
    
end
