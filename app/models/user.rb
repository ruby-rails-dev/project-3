class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness:true
  

  has_many :order_product_users
  has_many :orders, through: :orders_product_users 
  has_many :products, through: :order_product_users
  
 
  

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  
  def shopping_cart
    @current_user.shopping_cart
  end


end
