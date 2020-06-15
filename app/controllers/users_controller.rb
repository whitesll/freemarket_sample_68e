class UsersController < ApplicationController
  before_action :move_to_index, :set_product

  def show
    @category = Product.order('created_at desc')
    @user = User.find(current_user[:id])
    @address = current_user.address
  end


  private

  def move_to_index
    redirect_to root_path unless signed_in? current_user.id == params[:id]
  end

  def set_product
    @product = Product.find(params[:id])
  end

  protected

  def address_params
    params.require(:address).permit(:address_full_width_last_name, :address_full_width_first_name, :address_hira_last_name, :address_hira_first_name, :phone_number, :zip_code, :prefectures, :city, :address, :room_number)
  end
end
