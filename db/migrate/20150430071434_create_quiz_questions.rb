class CreateQuizQuestions < ActiveRecord::Migration
  def change
    create_table :quiz_questions do |t|
      t.Integer :quiz_id
      t.Integer :question_id

      t.timestamps
    end
  end
end
