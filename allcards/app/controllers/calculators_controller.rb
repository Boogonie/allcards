class CalculatorsController < ApplicationController

  def cbcalc
    @category_rate = { :Groceries => params[:groceries],
                       :Gas       => params[:gas],
                       :Everyday  => params[:everyday]
                     }

    #groceries = params[:groceries]

    @credit_cards = CreditCard.all.includes([:categories, :reward_rates])

    # @credit_cards.each do |card|
    #   #category_rate.each do
    #     reward_rate = card.reward_rates.find{ |rr| rr.category.name == 'Groceries' }
    #     puts "#{reward_rate}"
    #     @cash_back  = reward_rate.percent * params[:groceries].to_i / 100
    #   #end
    # end
  end

end
