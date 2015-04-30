class CreateCourseClusters < ActiveRecord::Migration
  def change
    create_table :course_clusters do |t|
      t.Integer :cluster_id
      t.Integer :course_id

      t.timestamps
    end
  end
end
