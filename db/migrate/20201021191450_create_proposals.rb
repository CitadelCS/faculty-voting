class CreateProposals < ActiveRecord::Migration[6.0]
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :text
      t.integer :active, default: 0  
      t.timestamps
    end
  end
end
