class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @card = Creditcard.where(user_id: current_user.id)
  end
end