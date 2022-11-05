FactoryBot.define do
  factory :service_provider do
    avatar_url { Faker::Avatar.image }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    bio { Faker::TvShows::MichaelScott.quote }
    professional { Faker::Boolean.boolean }
  end
end
