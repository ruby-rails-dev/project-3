class Product < ActiveRecord::Base
  has_many :orders, :through => :order_product_users
  has_many :order_product_users
  # belongs_to :user
  # belongs_to :order



  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end

  







