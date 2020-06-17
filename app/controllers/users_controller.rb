class UsersController < ApplicationController
  before_action :move_to_index, :set_user, :set_category, :set_product

  def show
  end

  def exh_show
  end

  def buy_show
    @product = current_user.products.order('created_at desc')
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
    redirect_to root_path unless signed_in? current_user.id == params[:id]
  end

  def set_user
    @user = User.find(current_user[:id])
  end

  def set_category
    @category = Product.order('created_at desc')
  end

  def set_product
    @product = current_user.products.order('created_at desc')
  end
end
