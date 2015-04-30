class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.String :title
      t.Integer :user_id
      t.Integer :unit_id
      t.Integer :language_id
      t.Integer :specific_id

      t.timestamps
    end
  end
end
