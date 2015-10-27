class Order < ActiveRecord::Base
  belongs_to :user
  has_many :products, :through => :orders_products, dependent: :destroy
  has_many :orders_products
end
