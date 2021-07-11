class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :title, null: false
      t.string :video, null: false
      t.integer :gender, null: false

      t.timestamps
    end
  end
end
