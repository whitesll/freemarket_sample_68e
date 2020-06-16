class UsersController < ApplicationController
  before_action :move_to_index

  def show
    @category = Product.order('created_at desc')
    @user = User.find(current_user[:id])
    @address = current_user.address
    @product = current_user.products.order('created_at desc')
  end


  private

  def move_to_index
    redirect_to root_path unless signed_in? current_user.id == params[:id]
  end
end
