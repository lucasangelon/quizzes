class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :quiz_id
      t.integer :user_id
      t.integer :type_id
      t.integer :language_id
      t.integer :specific_id
      t.string :correct_answer

      t.timestamps
    end
  end
end
