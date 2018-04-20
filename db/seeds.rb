2.times do |index|
  Product.create!(name: Faker::Book.title,
                image: "https://increasify.com.au/wp-content/uploads/2016/08/default-image.png",
                country_of_origin: Faker::Lorem.sentence(20, false, 0).chop,
                cost: 55)
end
