class CalculatorsController < ApplicationController
  before_action :authenticate_user!

  def cbcalc

    @credit_cards = CreditCard.all #.includes([:categories, :reward_rates])

    @credit_cards.each do |card|
      
      @cash_back = ((card.reward_rate_by_category('Groceries')         * params[:groceries].to_i) +
                    (card.reward_rate_by_category('Gas')               * params[:gas].to_i)       +
                    (card.reward_rate_by_category('Everyday Spending') * params[:everyday].to_i)) /
                    100 * 12

      @reward_rate = @cash_back / ((params[:groceries].to_i + params[:gas].to_i + params[:everyday].to_i) * 12) * 100
    end

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
