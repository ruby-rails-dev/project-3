class CreateOrdersProducts < ActiveRecord::Migration
 def change
    create_table :orders_products do |t|
      t.references :product, index: true
      t.references :order, index: true
      t.timestamps null: false

    end
    add_foreign_key :orders_products, :products
    add_foreign_key :orders_products, :orders
  end
end
