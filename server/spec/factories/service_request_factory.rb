FactoryBot.define do
  factory :service_request do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    service_provider { association(:service_provider) }
    category { association(:category) }
    zone { association(:zone) }
  end
end
