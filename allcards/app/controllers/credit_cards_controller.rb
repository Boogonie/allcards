class CreditCardsController < ApplicationController

  def index
    @credit_cards = CreditCard.all
  end

  def new
    @credit_card = CreditCard.new
  end

  def create
    @credit_card = CreditCard.new(credit_card_params)
    if @credit_card.save
      redirect_to credit_card_path(@credit_card)
    else
      flash.now[:error] = @credit_card.errors.messages.first.join(" ")
      render 'new'
    end
  end

  def show
    @credit_card = CreditCard.find(params[:id])
  end

  def edit
    @credit_card = CreditCard.find(params[:id])
  end

  def update
    @credit_card = CreditCard.find(params[:id])
    if @credit_card.update(credit_card_params)
      redirect_to credit_card_path(@credit_card)
    else
      flash.now[:error] = @credit_card.errors.messages.first.join(" ")
      render 'edit'
    end
  end

  private

  def credit_card_params
    params.require(:credit_card).permit(:name, :card_art, :issuer, :annual_fee, :standard_reward_rate,
    :signup_bonus, :details, :regular_purchase_apr, :intro_purchase_apr, :intro_bt_apr, :credit_needed)
  end
end
