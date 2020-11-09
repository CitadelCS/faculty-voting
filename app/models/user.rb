class User < ApplicationRecord
  acts_as_voter
  has_many :proposals
  has_one :prog_user
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def role
    prog_user.role
  end
end
