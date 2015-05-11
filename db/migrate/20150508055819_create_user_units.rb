class CreateUserUnits < ActiveRecord::Migration
  def change
    create_table :user_units do |t|
      t.string :rails
      t.string :generate
      t.string :model
      t.string :user_unit
      t.integer :user_id
      t.string :unit_id

      t.timestamps
    end
  end
end
