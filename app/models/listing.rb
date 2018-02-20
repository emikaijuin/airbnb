class Listing < ActiveRecord::Base
  
  acts_as_bookable time_type: :range, bookable_across_occurrences: true
  
  has_many :keywords, through: :keyword_listings
  
    def is_available?(start_date, end_date)
      # Can only book one year ahead of time
      max_bookable_date = Date.today >> (12)
      
      if start_date.to_date < Date.today || end_date.to_date > max_bookable_date
        return false
        # add error message
      elsif start_date.to_date >= end_date.to_date
        return false
        # add error message
      elsif self.dates.length == 0
        return true
      else
        range = (start_date..end_date).map(&:to_s)
        range.each do |date|
          date = date.to_date.strftime # Issue in different formats- converting to date then back to string gets all dates to same format
          if self.dates.include?(date)
            return false
          end
        end
        return true
      end
    end
    
    def reserve_dates(start_date, end_date)
      range = (start_date..end_date).map(&:to_s)
      range.each do |date|
        self.dates << date
      end
      self.save
    end
    
    def host
      if self.user_id == nil
        "Mystery house!"
      else
        User.find(self.user_id).first_name
      end
    end
    
end
