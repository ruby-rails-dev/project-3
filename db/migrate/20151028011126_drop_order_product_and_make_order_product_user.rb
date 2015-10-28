class DropOrderProductAndMakeOrderProductUser < ActiveRecord::Migration
  def change
    drop_table :orders_products
    create_table :order_product_users

    add_column :order_product_users, :user_id, :integer
    remove_column :products, :user_id, :integer
  end
end
