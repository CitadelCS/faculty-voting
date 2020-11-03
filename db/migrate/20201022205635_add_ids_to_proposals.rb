class AddIdsToProposals < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :user_id, :integer
    add_column :proposals, :proposal_id, :integer
  end
end
