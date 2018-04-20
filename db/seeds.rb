2.times do |index|
  Product.create!(name: Faker::Book.title,
                image: "https://increasify.com.au/wp-content/uploads/2016/08/default-image.png",
                description: Faker::Lorem.sentence(20, false, 0).chop,
                githublink: "https://github.com/NickoDelaCruz",
                livelink: "https://www.youtube.com/")
end
