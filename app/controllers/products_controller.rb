class ProductsController < ApplicationController

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
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end

private

def product_params
  params.require(:product).permit(:name,:text,:category_id,:price,:status,:shippingcharges,:shipping_area,:days_to_ship, images_attributes: [:image, :_destroy, :id]) .merge(user_id: 1).merge(saler_id: 1).merge(buyer_id: 1)
end
