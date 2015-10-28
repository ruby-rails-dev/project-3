class ProductsController < ApplicationController
  def index
    @products = Product.order(:title).page(params[:page]).all
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.create(product_params)
     if @product.save
        flash[:success] = "Success!"
        redirect_to products_path
      else
        flash[:danger] = "Something went wrong..."
        render 'new'
      end
  
  end

  
  def destroy
    id = params[:id]
    product = Product.find(id)
    product.delete
    redirect_to "/orders"
  end

  def show
   @product = Product.find(params[:id])
  end


  private 

  def product_params 
    params.require(:product).permit(:title, :description, :price, :quantity, :image)
  end

  
end
