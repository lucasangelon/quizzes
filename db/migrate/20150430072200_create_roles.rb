class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.String :name

      t.timestamps
    end
  end
end
