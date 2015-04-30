class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.String :name

      t.timestamps
    end
  end
end
