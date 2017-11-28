# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Owner.destroy_all
Workspace.destroy_all
User.destroy_all

owners = []

10.times do
  owners << Owner.create!(
    email: Faker::Internet.email,
    password: 123123
  )
end

10.times do
  Workspace.create!(
    price_per_day: Faker::Number.normal(5000, 1.5),
    space_type: Faker::RuPaul.quote,
    capacity_max: Faker::Number.between(1, 100),
    environment: Faker::Movie.quote,
    available_time: Faker::Time.between(2.days.ago, Date.today, :all),
    catering: Faker::Boolean,
    security: Faker::Boolean,
    media: Faker::Boolean,
    free_rooms: Faker::Boolean,
    pet_friendly: Faker::Boolean,
    utilities: Faker::Pokemon.name,
    address: Faker::Address.street_address,
    near_location: Faker::Zelda.location,
    contact_number: Faker::PhoneNumber.phone_number,
    contact_name: Faker::Name.name,
    email: Faker::Internet.email,
    owner: owners.sample
  )
end


10.times do
  User.create!(
    email: Faker::Internet.email,
    password: 1231234
  )
end
