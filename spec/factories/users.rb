# Factory for the User class

FactoryBot.define do
  factory :user do
    email    { "elcid@elcid.edu" }
    password { "password" }
  end
end