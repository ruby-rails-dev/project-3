class OrdersController < ApplicationController
  def index
    @products = current_user.products
  end
  
end
