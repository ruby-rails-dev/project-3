class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true, uniqueness:true


  has_many :orders
  
  def index
    @users = User.all
    @products = Product.all
  end
  

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
