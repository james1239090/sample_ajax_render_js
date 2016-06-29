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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end


  private
  def product_params
    params.require(:product).permit(:name, :price)
  end
end
