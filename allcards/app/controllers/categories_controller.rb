class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to credit_card_path(@credit_card)
    else
      flash.now[:error] = @category.errors.messages.first.join(" ")
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :credit_card_id, :reward_rate_id)
  end

end
