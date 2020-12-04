# Factory for the ProgUser class

FactoryBot.define do
  factory :ProgUser do
    id        {1}
    user_id   {1}
    role_id   {1}
    association :user
    association :role
  end
end