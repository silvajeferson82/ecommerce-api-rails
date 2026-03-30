FactoryBot.define do
  factory :system_requeriment do
    sequence(:name) { |n| "Basic #{n}" }
    operational_system { Faker::Computer.os }
    storage { '100GB' }
    processor { 'Intel Core i7' }
    memory { '16GB' }
    video_board { 'NVIDIA GeForce GTX 1650' }
  end
end
