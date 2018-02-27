module ListingsHelper

  # def get_listings(params)
      
  #   if (params[:check_in] && params[:check_out])
  #     @listings = []
  #     Listing.all.each do |listing|
        
  #       if listing.is_available?(params[:check_in], params[:check_out])
  #         @listings << listing
  #       end
  #     end

  #   elsif params[:guests]
  #     @listings = []
  #     Listing.all.each do |listing|
  #       if listing.guests >= params[:guests].to_i
  #         @listings << listing
  #       end
  #     end
      
      
  #   else
  #     @listings = Listing.all
      
  #   end

  #   @listings
  # end
  
end
