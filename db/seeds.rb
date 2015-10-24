require 'ffaker'

20.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email,
    password: "password"
    )

20.times do
  Product.create(
    description: Faker::Product.product_name,
    title: Faker::Product.product
    )
end
end

    
 