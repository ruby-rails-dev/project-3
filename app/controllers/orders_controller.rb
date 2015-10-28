class OrdersController < ApplicationController

  def index
    user_products = OrderProductUser.where(user: current_user)
    opus = user_products.where(order_id: nil)
    @products = []
    opus.each do |opu|
      a = opu.product_id
      #a will return a number
      product = Product.find(a)
      @products.push(product)
    end
  end

  def create
    new_order = params.require(:order).permit(:order_id, :user_id, :product_id)
    new_order[:order_id] = params[:order_id]
    order = Order.create(new_order)
    redirect_to "/orders"
  end

    #find orders_ using current_user.id
    # @products = all of the orders_product_users using current_user.id

  def show
    @orders_product_user = current_order.orders_product_user
  end

  
  def destroy
     #binding.pry
    # order = Order.find(params[:id])
    
    # puts 'I AM HERE /n' + @order.inspect 
    # TODO: find this orders_product in your db and remove it.
    binding.pry
    @order = Order.find(params[:format])

    order.delete
    redirect_to "/orders"
  end


end
