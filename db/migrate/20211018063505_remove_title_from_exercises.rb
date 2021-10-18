class RemoveTitleFromExercises < ActiveRecord::Migration[6.0]
  def change
    remove_column :exercises, :title, :string
  end
end
