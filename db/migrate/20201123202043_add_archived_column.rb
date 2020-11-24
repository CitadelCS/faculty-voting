class AddArchivedColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :proposals, :archived, :boolean, :default => false
  end
end
