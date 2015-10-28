class OrderProductUsersController < ApplicationController

  def index
    @orders = OrderProductUser.where(user_id: current_user.id)
    # render json: @orders
  end

  def create 
    product = Product.find(params[:format])
    cart = OrderProductUser.new
    cart.user = current_user
    cart.product = product
    # add this product to your orders_product join table with product id and order id
    # also add user_id 
    # save your orders_product object
    cart.save!
    puts "\n\n\n"+cart.inspect
    redirect_to orders_path
  end
  
  def destroy
  id = params[:id]
  OrderProductUser.where(user_id: @current_user.id, product_id: params[:id]).first.destroy
  # destroy that model object
  redirect_to :back
  end
end

