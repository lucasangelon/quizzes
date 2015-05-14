class CreateCourseUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :course_users do |t|
      t.integer :user_id
      t.integer :course_id

      add_index :course_users, :user_id
      add_index :course_users, :course_id
    end
  end
end
