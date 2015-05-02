class CreateSpecifics < ActiveRecord::Migration
  def change
    create_table :specifics do |t|
      t.string :name

      t.timestamps
    end
  end
end
