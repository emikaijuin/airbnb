class ListingsController < ApplicationController
  include ListingsHelper
  
  before_action :set_listing, only: [:edit, :show, :book]
  before_action :require_permission, only: [:edit, :create]

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
  end
  
  def update
    redirect_to listing_path(params[:id])
  end
  
  def show
  end
  
  def book
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
    @booking.save
  end
  
  def set_listing
    @listing = current_listing
  end
  
  def require_permission
    if current_user.id != current_listing.user_id
      flash[:notice] = "Oops, is this where you meant to go?"
      redirect_to listing_path(current_listing.id)
    end
  end
  
  private
  
  def listing_params
    params.require(:listing).permit(:title, :description, :dates)
  end
end
