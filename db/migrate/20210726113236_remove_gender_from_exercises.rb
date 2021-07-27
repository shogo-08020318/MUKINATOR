class RemoveGenderFromExercises < ActiveRecord::Migration[6.0]
  def change
    remove_column :exercises, :gender, :integer
  end
end
