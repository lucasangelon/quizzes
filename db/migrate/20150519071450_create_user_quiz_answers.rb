class CreateUserQuizAnswers < ActiveRecord::Migration
  def change
    create_table :user_quiz_answers do |t|
      t.integer :user_id
      t.integer :user_quiz_id
      t.integer :question_id
      t.integer :question_extra_id
      t.integer :answer_text

      t.timestamps
    end
  end
end
