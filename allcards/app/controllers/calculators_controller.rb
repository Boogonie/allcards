class CalculatorsController < ApplicationController
  before_action :authenticate_user!
  def cbcalc
    @category_rate = { :Groceries => params[:groceries],
                       :Gas       => params[:gas],
                       :Everyday  => params[:everyday]
                     }

    #groceries = params[:groceries]

    @credit_cards = CreditCard.all.includes([:categories, :reward_rates])

    @credit_cards.each do |card|

      reward_rate_groceries = card.reward_rates.find{ |rr| rr.category.name == 'Groceries' }
      reward_rate_gas = card.reward_rates.find{ |rr| rr.category.name == 'Gas' }
      reward_rate_everyday = card.reward_rates.find{ |rr| rr.category.name == 'Everyday Spending' }

      @cash_back  =  ((reward_rate_groceries.percent * params[:groceries].to_i) +
                      (reward_rate_gas.percent       * params[:gas].to_i)       +
                      (reward_rate_everyday.percent  * params[:everyday].to_i))  /
                      100 * 12
      @reward_rate = @cash_back / ((params[:groceries].to_i + params[:gas].to_i + params[:everyday].to_i) * 12) * 100

    end


    # @credit_cards.each do |card|
    #   #category_rate.each do
    #     reward_rate = card.reward_rates.find{ |rr| rr.category.name == 'Groceries' }
    #     puts "#{reward_rate}"
    #     @cash_back  = reward_rate.percent * params[:groceries].to_i / 100
    #   #end
    # end
  end

end
