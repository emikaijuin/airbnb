class ListingsController < ApplicationController
  include ApplicationHelper
  
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
  
  def set_listing
    @listing = current_listing
  end
  
  private
  
  def listing_params
    params.require(:listing).permit(:title, :description, :dates)
  end
  
  def require_permission
    if !signed_in?
      flash[:notice] = "Oops, is this where you meant to go?"
      if params[:id]
        redirect_to listing_path
      else
        redirect_to listings_path
      end
    elsif current_user != current_listing.user
      flash[:notice] = "Oops, is this where you meant to go?"
      redirect_to listing_path
    end
  end
end
