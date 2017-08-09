# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..2).each do |rest|
  rest = Restaurant.create(
    name: Faker::Dessert.variety,
    address: Faker::Address.street_address,
    category: Restaurant::Categories.sample
  )
  nb_reviews = (0..50).sample
  (0..nb_reviews).each do |r|
    Review.create(
      restaurant: rest,
      rating: (0..5).sample,
      content: Faker::Lorem.sentence(3, true)
    )
  end
end
