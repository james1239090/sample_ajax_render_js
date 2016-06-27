class ProductsController < ApplicationController
  def index
    @products = Product.all

  end
  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)
    # @products = Product.all
    respond_to do |format|
      if @product.save
        format.js { render 'create' , product: @product}
        format.html {redirect_to products_path}
      else
        format.js { render 'create' , product: @product }
      end

    end

  end

  def edit

  end

  def update

  end

  def destroy

  end


  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
