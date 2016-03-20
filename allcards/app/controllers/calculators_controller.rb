class CalculatorsController < ApplicationController

  def cbcalc
    @groceries = params[:groceries]
    @gas = params[:gas]
    @everyday_spending = params[:everyday_spending]

    @reward_rates = RewardRate.all

    @credit_cards = CreditCard.all

  end
end
