class ListingsController < ApplicationController
  include ListingsHelper
  include ApplicationHelper
  
  before_action :set_listing, only: [:edit, :show, :book, :update]
  before_action :require_permission, only: [:edit, :create]

  def index
    @listings = Listing.where(nil)
    filtering_params(params).each do |k, v|
      @listings = @listings.public_send(k, v) if v.present?
    end
  end
  
  def new
    @listing = Listing.new
    # List all DBs that will be required to show available options for new listing.
    @property_types = PropertyType.all
    @property_subtypes = PropertySubtype.all
    @amenities = Amenity.all
    @safety_amenities = SafetyAmenity.all
    
    @listing_images = @listing.listing_images.build
    
  end
  
  def create
    @listing = Listing.new(listing_params)
    @listing.schedule = IceCube::Schedule.new(Date.today, duration: 365.days)
    @listing.user_id = current_user.id
    @listing.property_id = 6
 
    if @listing.save
      params[:listing_images]['image'].each do |image|
        @listing_image = @listing.listing_images.create!(:image => image)
      end
      flash[:notice] = "Listing added"
      redirect_to listing_path(@listing.id)
    else
      flash[:notice] = "Something went wrong- try again"
      redirect_to listings_path
    end
  end
  
  def destroy
  end
  
  def edit
    
  end
  
  def update
    photos = @listing.photos
    @listing.assign_attributes(listing_params)
    @listing.photos += photos
    if @listing.save
      redirect_to listing_path(@listing.id)
    end
  end
  
  def delete_photo(index)
    @listing = Listing.find(params[:id])
    @listing.photos[index].delete
    @listing.save
  end
  
  def show
    @listing_images = @listing.listing_images.all
  end
  
  private
  
  def set_listing
    @listing = current_listing
  end
  
  def listing_params
    # params.require(:listing).permit(:title, :description, :city, :country, :price, :guests, :beds, :bedrooms, :bathrooms, {photos: []})
    params.require(:listing).permit(:title, :description, :city, :country, :price, :guests, :beds, :bedrooms, :bathrooms, listing_images_attributes: [:id, :listing_id, :image])
  end
  
  def set_schedule(end_date)
    IceCube::Schedule.new(Date.today, duration: (end_date.to_date - Date.today).to_i.days)
  end
  
  
  def require_permission
    if !signed_in?
      flash[:notice] = "Oops, is this where you meant to go?"
      if params[:id]
        redirect_to listing_path
      else
        redirect_to listings_path
      end
    elsif params[:id]
      if current_user != current_listing.user
        flash[:notice] = "Oops, is this where you meant to go?"
        redirect_to listing_path
      end
    end
  end
  
  def filtering_params(params)
    params.slice(:city, :price, :guests, :bedrooms, :bathrooms)
  end
  
end
