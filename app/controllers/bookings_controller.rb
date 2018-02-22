class BookingsController < ApplicationController
  include ApplicationHelper
  
  def payment_details
    @client_token = Braintree::ClientToken.generate
  end
  
  def checkout
    nonce_from_the_client = params[:checkout_form][:payment_method_nonce]
    result = Braintree::Transaction.sale(
      :amount => current_listing.total_price(session[:start_date], session[:end_date]), 
      :payment_method_nonce => nonce_from_the_client,
      :options => {
        :submit_for_settlement => true
      }
    )
    if result.success?
      redirect_to book_confirmation_path(params[:id]), :flash => { :notice => "Payment successful" }
    else
      redirect_to payment_details_path, :flash => { :error => "Payment failed. Please try again." }
    end
  end
  
  def dates_confirmation
    if current_listing.is_available?(params[:start_date],params[:end_date])
      session[:start_date] = params[:start_date]
      session[:end_date] = params[:end_date]
    else
      flash[:notice] = "Sorry - some of your dates weren't available."
      redirect_to book_path
    end 
  end
  
  def book_finalization
    if current_user.book! current_listing, time_start: session[:end_date].to_date, time_end: session[:end_date].to_date
      current_listing.reserve_dates(session[:start_date],session[:end_date])
      @booking = current_user.bookings.last
      @booking.confirmation_number = SecureRandom.hex(6)
      @booking.save
    else
      flash[:notice] = "Oops, we weren't able to save this booking. Try again in a few minutes."
    end
  end
  
  
end
