class ProductsController < ApplicationController
  def index
    @products = Product.find_by_category(params[:category])
    render json: @products
  end
  
  def show
    @product = Product.find_by_code(params[:code])
  end
end