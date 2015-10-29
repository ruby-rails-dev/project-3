class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def index 
    @products = Product.all
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password_digest )
    p "CREATING A USER #{user_params}"
    @user = User.create(user_params)
    login(@user) # <-- login the user
    redirect_to "/users/#{@user.id}" 
   end

    def show
      id = params[:id]
      @user = User.find(id)
      @current_user = current_user
      render :show
    end

    def edit
      id = params[:id]
      @user = User.find(id)
      render :edit
    end

    def update
      user_id = params[:id]
      user = User.find(user_id)
      # get updated data
      updated_attributes = params.require(:user).permit(:first_name, :last_name)
      # update the user
      user.update_attributes(updated_attributes)
      #redirect to show
      redirect_to "/users"  # <-- go to show
    end
end
