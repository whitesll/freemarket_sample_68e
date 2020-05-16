class ProductsController < ApplicationController

  before_action :set_product, except: [:index, :new, :create]

  def index
    @products = Product.includes(:images).order('created_at DESC')
  end

  def new
    @product = Product.new
    @product.images.new
    @categories = Category.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render "products/new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(
      :name, 
      :category_id, 
      :text, 
      :brand, 
      :status, 
      :shippingcharges, 
      :shipping_area, 
      :days_to_ship, 
      :price,
      images_attributes: [:image, :_destroy, :id]
    )
    .merge(user_id: current_user.id)
  end
  
  def set_product
    @product = Product.find(params[:id])
  end

end
