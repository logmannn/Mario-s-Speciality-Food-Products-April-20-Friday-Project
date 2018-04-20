50.times do |index|
  product = Product.create!(
    name: Faker::Book.title,
    image: "https://increasify.com.au/wp-content/uploads/2016/08/default-image.png",
    countryoforigin: Faker::StarWars.planet,
    cost: rand(0..10000)
  )
  5.times do |index|
    product.reviews.create(
      author: Faker::Name.unique.name,
      content_body: Faker::Lorem.sentences(4).join(" "),
      rating: rand(0..5)
    )
  end
end
