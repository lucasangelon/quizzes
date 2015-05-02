class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :heading
      t.integer :user_id
      t.integer :type_id
      t.integer :unit_id
      t.integer :language_id
      t.integer :specific_id

      t.timestamps
    end
  end
end
