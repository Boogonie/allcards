class CalculatorsController < ApplicationController

  def cbcalc
    @groceries = params[:groceries]
    @gas = params[:gas]
    @everyday_spending = params[:everyday_spending]

    @reward_rates = RewardRate.all

    # @reward_rates.each do |rate|
    #   rate.credit_card.name
    #   rate.category.name
    #   rate.percent
    # end

  end
end
