class CreditCardsController < ApplicationController
  def display
    @credit_cards = CreditCard.all
  end
end
