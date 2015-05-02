class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :heading
      t.integer :user_id
      t.integer :type_id
      t.integer :unit_id
      t.integer :language_id
      t.integer :specific_id
      t.string :correct_answer

      t.timestamps
    end
  end
end
