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

  end

  private

  def reward_rate_params
    params.require(:reward_rate).permit(:percent)
  end

end
