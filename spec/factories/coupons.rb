FactoryBot.define do
  factory :coupon do
    sequence(:code) { |n| "COUPON#{n.to_s.rjust(6, '0')}" }
    status { %i[active inactive].sample }
    discount_value { rand(1..99) }
    due_date { Date.current + 1.year }
  end
end
