Category.destroy_all
Zone.destroy_all
ServiceProvider.destroy_all

require 'faker'

# Create 10 categories
categories = 10.times.map do
  Category.create(name: Faker::Job.field)
end

# Create 10 action zones
zones = 10.times.map do
  Zone.create(name: Faker::Address.city)
end

# Create 100 service providers
100.times do
  ServiceProvider.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    bio: Faker::TvShows::MichaelScott.quote,
    professional: Faker::Boolean.boolean,
    avatar_url: Faker::Avatar.image,
    categories: categories.sample(rand(1..categories.size)),
    action_zones: zones.sample(rand(1..zones.size))
  )
end
