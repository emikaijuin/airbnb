class ListingsController < ApplicationController
    
    def index
        @listings = Listing.all
    end
    
    def new
        @listing = Listing.new
        @property_types = PropertyType.all
        @property_subtypes = PropertySubtype.all
        @amenities = Amenity.all
        @safety_amenities = SafetyAmenity.all
    end
    
    def create
        @listing = Listing.new(listing_params)
        @listing.save
        redirect_to listings_path
    end
    
    private
    
    def listing_params
        params.require(:listing).permit(:title, :description)
    end
end
