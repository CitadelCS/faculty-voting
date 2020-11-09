class Role < ApplicationRecord
  has_many :prog_users
  has_many :proposals

  def isMultiRole?

    (name.eql? 'Group A+B')
  end
end
