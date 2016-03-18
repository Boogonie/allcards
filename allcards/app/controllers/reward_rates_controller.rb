class RewardRatesController < ApplicationController

  def new
    @reward_rate = RewardRate.new
  end

  def create
    @reward_rate = RewardRate.new(reward_rate_params)

    if @reward_rate.save
      redirect_to credit_card_path(@credit_card)
    else
      flash.now[:error] = @category.errors.messages.first.join(" ")
      render 'new'
    end
  end

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

  private

  def reward_rate_params
    params.require(:reward_rate).permit(:percent)
  end

end
