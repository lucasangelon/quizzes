class CreateClusterUnits < ActiveRecord::Migration
  def change
    create_table :cluster_units do |t|
      t.integer :unit_id
      t.integer :cluster_id

      t.timestamps
    end
  end
end
