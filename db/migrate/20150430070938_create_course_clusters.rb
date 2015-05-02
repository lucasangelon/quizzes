class CreateCourseClusters < ActiveRecord::Migration
  def change
    create_table :course_clusters do |t|
      t.integer :cluster_id
      t.integer :course_id

      t.timestamps
    end
  end
end
