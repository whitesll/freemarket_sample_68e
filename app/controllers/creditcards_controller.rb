class CreditcardsController < ApplicationController

  def index
    @user = current_user
    # @creditcard = Creditcard.find[params[:id]]
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @user = current_user
    @default_card_information = @user.creditcard
  end


end
