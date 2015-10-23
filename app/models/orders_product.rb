class OrdersProduct < ActiveRecord::Base
  belongs_to :products
  belongs_to :orders
end
