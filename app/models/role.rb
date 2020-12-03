#Role models the security model in the application
#Roles are applied to both users and proposals in the application

class Role < ApplicationRecord
  has_many :prog_users
  has_many :proposals
#Roles can either be a single entity or groups of roles
  def isMultiRole?

    (name.eql? 'Group A+B')
  end
end
