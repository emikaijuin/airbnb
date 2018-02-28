class Listing < ActiveRecord::Base
  
  acts_as_bookable time_type: :range, bookable_across_occurrences: true
  
  require 'pg_search'
  include PgSearch
  multisearchable :against => [ :title, :description, :city, :country ]
  
  has_many :keyword_listings
  has_many :keywords, through: :keyword_listings
  belongs_to :user
  
  scope :city, -> (city) { where( city: city )}
  scope :price, -> (price) { where ( "price < #{price} ")}
  scope :guests, -> (guests) { where ( "guests >= #{guests} ")}
  scope :bedrooms, -> (bedrooms) { where ( "bedrooms >= #{bedrooms}" )}
  scope :bathrooms, -> (bathrooms) { where ("bathrooms >= #{bathrooms}")} 
    
    def self.search_cities(query)
      found_results = []
      where("city ILIKE :city", city: "%#{query}%").map do |record|
        # found_results << record.city
        record.city if !found_results.include?(record.city)
      end
    end
    
    def total_reviews
      Review.where(listing_id: self.id)
    end
    
    def rating
      rating = 0
      if total_reviews.count > 0
        total_reviews.each do |review|
          rating += review.rating
        end
        rating = rating / total_reviews.count
      end
    end
    
    def total_price(start_date, end_date)
      (self.price.to_i * booking_length(start_date, end_date)).to_i
    end
    
    def booking_length(start_date, end_date)
      end_date.to_date - start_date.to_date
    end
    
    def date_range(start_date, end_date)
      (start_date.to_date..end_date.to_date).map(&:to_s)
    end
    
    def update_listing_schedule
      current_listing.schedule = IceCube::Schedule.new(Date.today, duration: 365.days)
      current_listing.save
    end
    
    def date_within_bookable_range?(start_date, end_date)
      update_listing_schedule
      date_range(start_date, end_date).each do |date|
        if !current_listing.schedule.include?(date)
          false
        end
      end
      true
    end
  
    def is_available?(start_date, end_date)
      range = date_range(start_date, end_date)
      range.each do |date|
        date = date.to_date.strftime # Issue in different formats- converting to date then back to string gets all dates to same format
        if self.dates.include?(date)
          return false
        end
      true
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
