class SignupRewardsController < ApplicationController

  def show
  @credit_card = CreditCard.find(params[:credit_card_id])
  @signup_reward = @credit_card.signup_rewards.find(params[:id])
  end

  def new
    @credit_card = CreditCard.find(params[:credit_card_id])
    @signup_reward = @credit_card.signup_rewards.build
  end

  def create
    @credit_card = CreditCard.find(params[:credit_card_id])
    @signup_reward = @credit_card.signup_rewards.build(params[:signup_reward])
  end



end
