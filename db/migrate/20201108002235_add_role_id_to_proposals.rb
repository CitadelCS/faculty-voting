class AddRoleIdToProposals < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :role_id, :integer
  end
end
