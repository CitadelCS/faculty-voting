# Factory for the ProgUser class

FactoryBot.define do
  factory :ProgUser do
    id        {1}
    association :user, :role
  end
end