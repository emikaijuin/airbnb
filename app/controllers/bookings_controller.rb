class BookingsController < ApplicationController
  include ApplicationHelper
  
  def show
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
  
  
end
