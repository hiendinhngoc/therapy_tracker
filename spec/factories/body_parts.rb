FactoryBot.define do
  factory :body_part do
    user
    sequence(:name) { |n| "body_part#{n}" }
  end
end
