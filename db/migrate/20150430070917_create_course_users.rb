class CreateCourseUsers < ActiveRecord::Migration
  def change
    create_table :course_users do |t|
      t.Integer :user_id
      t.Integer :course_id

      t.timestamps
    end
  end
end
