class CreateQuestionExtras < ActiveRecord::Migration
  def change
    create_table :question_extras do |t|
      t.string :content
      t.integer :question_id

      t.timestamps
    end
  end
end
