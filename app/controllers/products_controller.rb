class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def new
    @product = Product.new

  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      redirect_to "/products/new"
    end
  end

  def edit

  end

  def show
    @product = Product.find(params[:id])
  end

  def update

  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to "/products"
  end


  def product_params
    params.required(:product).permit(:name, :description, :price_in_cents)
  end

end
