class Proposal < ApplicationRecord
    belongs_to :user
    belongs_to :role
    validates :title, presence: true,
                    length: { minimum: 5 }
end
