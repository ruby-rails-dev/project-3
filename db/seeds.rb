require 'ffaker'


# Product.create(image: File.new("public/images/image1.jpg")
#     )

10.times do
  User.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    email: Faker::Internet.email,
    password: "password"
    )

10.times do
  Product.create(
    description: Faker::Product.product_name,
    title: Faker::Product.product,
    image: File.new("public/images/image1.jpg")
  )
end

end

    
 