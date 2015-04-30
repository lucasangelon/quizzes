class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.String :heading
      t.Integer :user_id
      t.Integer :type_id
      t.Integer :unit_id
      t.Integer :language_id
      t.Integer :specific_id
      t.String :correct_answer

      t.timestamps
    end
  end
end
