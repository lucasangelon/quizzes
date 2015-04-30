class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.String :first_name
      t.String :last_name
      t.String :username
      t.String :password
      t.integer :role_id

      t.timestamps
    end
  end
end
