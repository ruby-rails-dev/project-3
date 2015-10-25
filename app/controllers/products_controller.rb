class ProductsController < ApplicationController
  def index
    @products = Product.order(:title).page(params[:page]).all
  end

  def new
    @product = Product.new
  end

  def show
   id = params[:id]
   @product = Product.find(params[:id])
   render :show
  end
end
