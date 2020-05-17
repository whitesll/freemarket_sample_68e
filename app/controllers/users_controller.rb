class UsersController < ApplicationController
  before_action :move_to_index, 

  def show
    @user = current_user
  end

  def exh_show
  end

  def buy_show
  end

  def edit
    @user = current_user
    @address = current_user.address
  end

  def update
  end

  def credit
  end

  def credit_post
  end

  private

  def move_to_index
    redirect_to root_path unless signed_in?
  end

end
