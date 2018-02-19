class Listing < ActiveRecord::Base
  
  has_many :keywords, through: :keyword_listings
  
    def is_available?(start_date, end_date)
      # Can only book one year ahead of time
      max_bookable_date = Date.today >> (12)
      
      if start_date < Date.today || end_date > max_bookable_date
        return false
      elsif self.dates.length == 0
        puts "length was zero"
        return true
      else
        range = (start_date..end_date).map(&:to_s)
        range.each do |date|
          if self.dates.include?(date)
            return false
          end
        end
        return true
      end
    end
    
    def host
      if self.user_id == nil
        "Mystery house!"
      else
        User.find(self.user_id).first_name
      end
    end
    
end
