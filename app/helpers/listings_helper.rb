module ListingsHelper
  def current_listing
    Listing.find(params[:id])
  end
end
