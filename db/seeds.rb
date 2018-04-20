2.times do |index|
  product = Product.create!(
    name: Faker::Book.title,
    image: "https://increasify.com.au/wp-content/uploads/2016/08/default-image.png",
    countryoforigin: Faker::StarWars.planet.chop,
    cost: 55
  )

  product.reviews.create(
    author: Faker::Name.unique.name.chop,
    content_body: Faker::Lorem.characters(55),
    rating: 5
  )
  
end
