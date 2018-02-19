class ListingsController < ApplicationController
    include ListingsHelper

    def index
        @listings = Listing.all
    end
    
    def new
        @listing = Listing.new
        
        # List all DBs that will be required to show available options for new listing.
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
    
    def destroy
    end
    
    def edit
        @listing = current_listing
    end
    
    def update
        redirect_to listing_path(params[:id])
    end
    
    def show
        @listing = current_listing
    end
    
    private
    
    def listing_params
        params.require(:listing).permit(:title, :description)
    end
end
