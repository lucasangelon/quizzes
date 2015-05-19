class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.datetime :due_date
      t.integer :user_id
      t.integer :unit_id
      t.integer :language_id
      t.integer :specific_id

      t.timestamps
    end
  end
end
