class BraintreeController < ApplicationController
  
  def new
    @client_token = Braintree::ClientToken.generate
  end
  
  def checkout
    
    nonce_from_the_client = params[:checkout_form][:payment_method_nonce]
    
    result = Braintree::Transaction.sale(
      :amount => @total_price, 
      :payment_method_nonce => nonce_from_the_client,
      :options => {
        :submit_for_settlement => true
      }
    )
    
    if result.success?
      redirect_to book_confirmation_path(session[:id]), :flash => { :notice => "Payment successful" }
    else
      redirect_to braintree_new_path, :flash => { :error => "Payment failed. Please try again." }
    end
  end
  
end
