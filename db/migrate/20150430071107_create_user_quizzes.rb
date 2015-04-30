class CreateUserQuizzes < ActiveRecord::Migration
  def change
    create_table :user_quizzes do |t|
      t.Integer :user_id
      t.Integer :quiz_id

      t.timestamps
    end
  end
end
