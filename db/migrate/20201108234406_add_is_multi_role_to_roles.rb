class AddIsMultiRoleToRoles < ActiveRecord::Migration[6.0]
  def change
    add_column :roles, :is_multi_role, :boolean, default: false
  end
end
