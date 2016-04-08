class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def balance_transfer
    @credit_cards = CreditCard.all
  end

end
