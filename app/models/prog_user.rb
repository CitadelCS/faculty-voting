#ProgUser is extension of the user model that adds roles to the devise models

class ProgUser < ApplicationRecord
  belongs_to :user
  belongs_to :role
end
