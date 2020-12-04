# Factory for the Role class

FactoryBot.define do
  factory :role do
    id            { 1 }
    name          { 'Group A' }
    description   { 'Proposal Group A' }
    is_multi_role { 0 }
  end
end
