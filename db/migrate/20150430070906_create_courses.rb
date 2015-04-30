class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.String :name

      t.timestamps
    end
  end
end
