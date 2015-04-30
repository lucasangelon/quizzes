class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.String :heading
      t.Integer :user_id
      t.Integer :type_id
      t.Integer :unit_id
      t.integer :language_id
      t.Integer :specific_id

      t.timestamps
    end
  end
end
