class AddAttrToOrderProductUser < ActiveRecord::Migration
  def change
    add_column :order_product_users, :order_id, :integer
    add_column :order_product_users, :product_id, :integer
  end
end
