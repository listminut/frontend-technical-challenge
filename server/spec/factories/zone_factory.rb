FactoryBot.define do
  factory :zone do
    name { Faker::Address.city }
  end
end
