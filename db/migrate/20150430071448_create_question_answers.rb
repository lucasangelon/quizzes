class CreateQuestionAnswers < ActiveRecord::Migration
  def change
    create_table :question_answers do |t|
      t.Integer :question_id
      t.Integer :answer_id

      t.timestamps
    end
  end
end
