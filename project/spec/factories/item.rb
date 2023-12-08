# spec/factories/item.rb
FactoryBot.define do
  factory :item do
    name { Faker::Lorem.word }
    deleted_at { nil }
  end
end