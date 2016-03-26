class CalculatorsController < ApplicationController
  before_action :authenticate_user!

  def cbcalc

    @credit_cards = CreditCard.all

    @credit_cards_and_rewards = @credit_cards.inject({}) do |memo, card|
      cash_back = ( (card.monthly_reward_by_category('Groceries'        , params[:groceries].to_i)) +
                    (card.monthly_reward_by_category('Gas'              , params[:gas].to_i))       +
                    (card.monthly_reward_by_category('Everyday Spending', params[:everyday].to_i))) /
                    100 * 12

      reward_rate = cash_back / ((params[:groceries].to_i + params[:gas].to_i + params[:everyday].to_i) * 12) * 100

      memo.merge(card => { cash_back: cash_back, reward_rate: reward_rate })
    end

  end

  def cbcompare

    @credit_cards = CreditCard.all

    @my_cash_back = ((params[:my_groceries].to_i * params[:groceries].to_i) +
                     (params[:my_gas].to_i       * params[:gas].to_i)       +
                     (params[:my_everyday].to_i  * params[:everyday].to_i)) /
                     100 * 12



    @my_reward_rate = @my_cash_back.to_f / ((params[:groceries].to_f + params[:gas].to_f + params[:everyday].to_f) * 12) * 100

    @credit_cards_and_rewards = @credit_cards.inject({}) do |memo, card|
      cash_back =  ((card.monthly_reward_by_category('Groceries'        , params[:groceries].to_i)) +
                    (card.monthly_reward_by_category('Gas'              , params[:gas].to_i))       +
                    (card.monthly_reward_by_category('Everyday Spending', params[:everyday].to_i))) /
                    100 * 12

      reward_rate = cash_back / ((params[:groceries].to_i + params[:gas].to_i + params[:everyday].to_i) * 12) * 100

      memo.merge(card => { cash_back: cash_back, reward_rate: reward_rate })
    end

  end

end
