class RemoveGenderFromResults < ActiveRecord::Migration[6.0]
  def change
    remove_column :results, :gender, :integer
  end
end
