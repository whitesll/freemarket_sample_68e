class UsersController < ApplicationController
  before_action :move_to_index, 

  def show
  end

  def exh_show
  end

  def buy_show
  end

  def edit
    @user = User.find(current_user[:id])
  end

  def update
    @user.save
  end

  def edit_address
    @address = current_user.address
  end

  def edit_address_post
  end

  private

  def move_to_index
    redirect_to root_path unless signed_in?
  end

  protected

  def address_params
    params.require(:address).permit(:address_full_width_last_name, :address_full_width_first_name, :address_hira_last_name, :address_hira_first_name, :phone_number, :zip_code, :prefectures, :city, :address, :room_number)
  end
end
