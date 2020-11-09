class Proposal < ApplicationRecord
    acts_as_votable
    belongs_to :user
    validates :title, presence: true,
                    length: { minimum: 5 }
end
