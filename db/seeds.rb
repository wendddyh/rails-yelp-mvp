# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

(1..10).each do |restaurant|
  @restaurants = Restaurant.create!(name: Faker::Name.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, category: %w(chinese italian japanese french belgian).sample )
end

(1..3).each do |review|
  @review = Review.create!(content: Faker::Food.description, rating: Faker::Number.between(from: 1, to: 5), restaurant_id: 1  )

end
