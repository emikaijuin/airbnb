class Listing < ActiveRecord::Base

  acts_as_bookable time_type: :range, bookable_across_occurrences: true
  
  has_many :keyword_listings
  has_many :keywords, through: :keyword_listings
  belongs_to :user
  
    def total_price
      self.price * booking_length
    end
    
    def booking_length
    end_date.to_date - start_date.to_date
    end
    
    def date_range(start_date, end_date)
      (start_date..end_date).map(&:to_s)
    end
  
    def is_available?(start_date, end_date)
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
        range = date_range(start_date, end_date)
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
      range = date_range(start_date, end_date)
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
    
    def property_type
      
      property = Hash.new
      
      subtype_id = Property.find(self.property_id).property_subtype_id
      type_id = Property.find(self.property_id).property_type_id
      
      subtype = PropertySubtype.find(subtype_id).subtype
      type = PropertyType.find(type_id).property 
      
      property[:subtype] = subtype
      property[:type] = type
      
      property
      
    end
    
end
