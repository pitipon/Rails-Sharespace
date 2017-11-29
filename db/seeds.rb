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

100.times do
  Workspace.create!(
    name: "#{Faker::StarTrek.villain} Space",
    description: Faker::StarWars.quote,
    address: "#{Faker::Address.street_address} #{Faker::Address.secondary_address} ,#{Faker::Address.state}",
    city: Faker::Address.city,
    country: Faker::Address.country,
    latitude: Faker::Address.latitude ,
    longitude: Faker::Address.longitude ,
    price_per_day: rand(10...300),
    owner: owners.sample,
    space_type: Workspace::SPACETYPE.sample,
    capacity_max: rand(10...300),
    environment: Workspace::ENVIRONMENT.sample,
    theme: Workspace::THEME.sample,
    available_time: Workspace::AVAILABLE_TIME.sample,
    catering: Workspace::CATERING.sample,
    security: Workspace::SECURITY.sample,
    media: Workspace::MEDIA.sample,
    services: Workspace::SERVICES.sample,
    free_rooms: Workspace::FREEROOMS.sample,
    parking: Workspace::PARKING.sample,
    pet_friendly: Workspace::PET_FRIENDLY.sample,
    utilities: Workspace::UTILITIES.sample,
    near_location: Workspace::NEAR.sample,
    contact_number: Faker::Company.duns_number,
    contact_name: Faker::DragonBall.character,
    contact_email: Faker::Internet.email,
    logo: Faker::Company.logo
  )
  end

#   spacetype = Workspace::SPACETYPE
#   spacetype["spacetypes"].each do |s|
#     workspace = Workspace.new(space_type: s[])
#     workspace.save
#   end

#   environment = Workspace::ENVIRONMENT
#   environment["environment"].each do |e|
#     workspace = Workspace.new(environment: e[])
#     workspace.save
#   end

#   theme = Workspace::THEME
#   theme["theme"].each do |t|
#     workspace = Workspace.new(theme: t[])
#     workspace.save
#   end

#   ava_time = Workspace::AVAILABLE_TIME
#   ava_time["available_time"].each do |a|
#     workspace = Workspace.new(available_time: a[])
#     workspace.save
#   end

#   catering = Worksapce::CATERING
#   catering["catering"].each do |c|
#     workspace = Workspace.new(catering: c[])
#     workspace.save
#   end

#   security = Worksapce::SECURITY
#   security["security"].each do |u|
#     workspace = workspace.new(security: u[])
#     workspace.save
#   end

#   media = Worksapce::MEDIA
#   media["media"].each do |m|
#     workspace = worksapce.new(media: m[])
#     worksapce.save
#   end

#   service = Workspace::SERVICES
#   service["services"].each do |s|
#     workspace = workspace.new(services: s[])
#     worksapce.save
#   end

#   freeroom = Workspace::FREEROOMS
#   freeroom["freeroom"].each do |r|
#     workspace = worksapce.new(:free_rooms f[])
#     workspace.save
#   end

#   parking = Workspace.PARKING
#   parking["parking"].each do |p|
#     workspace = workspace.new(:parking p[])
#     workspace.save
# end
