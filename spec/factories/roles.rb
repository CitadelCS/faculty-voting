# Factory for the Role class

FactoryBot.define do
  factory :role do
    id           {1}
    name         {"A"}
#    trait :single do
    description  {"nomulti"}
    is_multi_role{0}
#   end 
   #     trait :multi do
  #      description  {"multi"}
 #       is_multi_role{1}
#    end
  end
end