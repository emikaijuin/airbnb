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
    
    def book
        @listing = current_listing
    end
    
    def book_confirmation
        @user = current_user
    end
    
    def book_check
        if current_listing.is_available?(params[:start_date],params[:end_date])
            session[:start_date] = params[:start_date]
            session[:end_date] = params[:end_date]
            redirect_to book_confirmation_path
        else
          flash[:notice] = "Sorry - some of your dates weren't available."
          redirect_to book_path
        end 
    end
    
    def book_success
        current_user.book! current_listing, time_start: session[:start_date].to_date, time_end: session[:end_date].to_date
        current_listing.reserve_dates(session[:start_date], session[:end_date])
        @booking = current_user.bookings.last
        @booking.confirmation_number = SecureRandom.hex(6)
        params[:confirmation_number] = @booking.confirmation_number
    end
    
    private
    
    def listing_params
        params.require(:listing).permit(:title, :description, :dates)
    end
end
