class ProductsController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index]
 before_action :set_product, only: [:show, :edit, :create, :update, :destroy]
 def index
@products = Product.all
 @products = Product.search(params[:search])
end

def show
end

def new
  @product = Product.new
end

def create
  @product = Product.new(product_params)
  if @product.save
    redirect_to products_path(@product)
  else
    render :new
  end
end

def edit
end

def update
  @product.update(product_params)
  redirect_to products_path
end

def destroy
  @product.destroy(product_params)
  redirect_to products_path
end

private

def product_params
  params.require(:product).permit(:name, :price, :size, :color, :category, :photo)
end

def set_product
  @product = Product.find(params[:id])
end
end
