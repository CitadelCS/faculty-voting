class AddGroupTypeToProposals < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :group_type, :string
  end
end
