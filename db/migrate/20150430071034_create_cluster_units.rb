class CreateClusterUnits < ActiveRecord::Migration
  def change
    create_table :cluster_units do |t|
      t.Integer :unit_id
      t.Integer :cluster_id

      t.timestamps
    end
  end
end
