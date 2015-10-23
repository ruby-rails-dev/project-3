class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :imgurl
      t.float :price
      t.text :description
      t.string :title
      t.integer :quantity
      t.string :category
    

      t.timestamps null: false
    end
  end
end
