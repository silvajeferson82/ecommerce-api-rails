FactoryBot.define do
  factory :game do
    mode { %i(pvp pve both).sample }
    release_date { Date.current }
    developer { Faker::Company.name }
    system_requeriment
  end
end
