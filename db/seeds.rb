# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Company.destroy_all
User.destroy_all
Claim.destroy_all
AdminUser.destroy_all


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 

30.times do |i|
  User.create!(
    email: Faker::Internet.email,
    name: Faker::Name.name,
    password:Faker::Number.number(10))
end


20.times do |i|
  Company.create(
    name: Faker::Name.name,
    rut: Faker::Number.number(10) )
end


250.times do |i|
  Claim.create(comment: Faker::Lorem.paragraph(2),
              user: User.order("RANDOM()").first,
              company: Company.order("RANDOM()").first )
end
