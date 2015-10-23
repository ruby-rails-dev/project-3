class OrdersController < ApplicationController
  def index
  end

  def new
  end

  def show 
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def require_login
      unless current_user
        redirect_to "/sign_in"
      end
  end
end
