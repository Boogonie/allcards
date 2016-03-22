class CalculatorsController < ApplicationController
  before_action :authenticate_user!

  def cbcalc

    @credit_cards = CreditCard.all #.includes([:categories, :reward_rates])

  end

  def cbcompare

    @credit_cards = CreditCard.all

  end

  #This code blocks is my attempt to move logic from view to controller to
  #model

  def show_data
    @groceries = params[:groceries].to_i
    @gas       = params[:gas].to_i
    @everday   = params[:everyday].to_i
  end

end
