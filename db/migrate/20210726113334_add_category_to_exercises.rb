class AddCategoryToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :category, :string, null: false
  end
end
