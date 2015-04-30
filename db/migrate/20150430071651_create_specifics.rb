class CreateSpecifics < ActiveRecord::Migration
  def change
    create_table :specifics do |t|
      t.String :name

      t.timestamps
    end
  end
end
