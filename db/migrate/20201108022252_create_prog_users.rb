class CreateProgUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :prog_users do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end
end
