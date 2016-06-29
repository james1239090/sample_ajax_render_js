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
        format.js
        format.html {redirect_to products_path}
      else
        format.js
      end

    end

  end
  def edit

  end

  def update

  end

  def destroy

    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end


  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
