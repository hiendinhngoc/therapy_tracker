FactoryBot.define do
  factory :pain do
    user
    sequence(:name) { |n| "pain#{n}" }
  end
end