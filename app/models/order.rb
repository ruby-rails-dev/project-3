class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_product_users
  has_many :products, :through => :order_product_users, dependent: :destroy

  def self.totalPrice(product)
    total = 0
    product.each do |p|
      total+= p.price
    end
    total
  end
  

end
