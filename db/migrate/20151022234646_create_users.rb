class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :streetaddress
      t.string :city
      t.string :state
      t.integer :zipcode
      t.timestamps null: false
    end
  end
end
