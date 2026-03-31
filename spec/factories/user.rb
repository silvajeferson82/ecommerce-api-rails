
FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "test321" }
    password_confirmation { "test321" }
    profile { %i(admin client).sample }
  end
end