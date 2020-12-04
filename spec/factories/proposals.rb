# Factory for the proposal class

FactoryBot.define do
  factory :proposal do
    id { 1 }
    title { 'testtitle' }
    text { 'testtext' }
    active { 1 }
    user_id { 1 }
    proposal_id { 1 }
    role_id { 1 }
    group_type { 'Group A' }
    archived { false }
    association :role
  end
end
