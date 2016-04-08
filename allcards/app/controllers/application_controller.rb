class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
#This method enables credit card data to be included in the layout.
  def layout
    @credit_cards = CreditCard.all
  end

end
