class CalculatorsController < ApplicationController
  before_action :authenticate_user!

  def cbcalc

    @credit_cards = CreditCard.all #.includes([:categories, :reward_rates])

  end

  def cbcompare

    @credit_cards = CreditCard.all

  end

end
