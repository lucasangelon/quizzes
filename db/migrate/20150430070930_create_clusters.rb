class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.String :name

      t.timestamps
    end
  end
end
