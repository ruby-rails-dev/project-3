class Product < ActiveRecord::Base
  has_many :orders, :through => :orders_products
  has_many :orders_products
end
