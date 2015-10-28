require 'ffaker'
puts Dir.pwd

10.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email,
    password: "password"
    )
end

30.times do
  Product.create(
    description: Faker::Product.product,
    title: Faker::Product.product_name,
    image: File.new("./public/images/image2.jpg"),
    price: rand(1..300),
    quantity: rand(1..10)
  )

end

    
 