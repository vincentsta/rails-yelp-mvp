# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cinq = Restaurant.create(
  name: "Le Cinq - Four Seasons Hôtel George V",
  address: "31, avenue George V 75008 Paris",
  phone_number: "",
  category: "french"
  )

orangerie = Restaurant.create(
  name: "L'Orangerie - Four Seasons Hôtel George V",
  address: "31, avenue George V 75008 Paris",
  phone_number: "",
  category: "italian"
  )

histoire = Restaurant.create(
  name: "Mathieu Pacaud - Histoires",
  address: "85 Avenue Kléber 75116 Paris",
  phone_number: "01 70 98 16 35",
  category: "french"
  )

Review.create(
  restaurant: histoire,
  rating: 5,
  content: "Topissime"
  )

Review.create(
  restaurant: histoire,
  rating: 4,
  content: "Trop cher Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis omnis officia sed esse aliquam, repudiandae porro perspiciatis, dolorem excepturi tenetur officiis laudantium hic, blanditiis! Repudiandae quas pariatur deleniti provident ipsum?"
  )

Review.create(
  restaurant: histoire,
  rating: 2,
  content: "Vraiment pas bon"
  )

Review.create(
  restaurant: cinq,
  rating: 5,
  content: "Au top comme d'habitude")
