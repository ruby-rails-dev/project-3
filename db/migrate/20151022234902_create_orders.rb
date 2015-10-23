class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.string :order_number

      t.string :subtotal
      t.string :tax
      t.string :shipping
      t.integer :user_id
  
      t.integer :quantity
      t.boolean :checked_out
      t.boolean :fulfilled
  
      t.timestamps null: false
    end
  end 
end
