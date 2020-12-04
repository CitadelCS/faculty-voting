# Factory for the User class

FactoryBot.define do

  factory :user do
    sequence(:email) { |n| "elcid#{n}@elcid.edu" }
    password { 'password' }
  end
end
