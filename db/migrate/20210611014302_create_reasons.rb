class CreateReasons < ActiveRecord::Migration[6.0]
  def change
    create_table :reasons do |t|
      t.string :name, nill: false
      t.references :trouble, null: false, foreign_key: true

      t.timestamps
    end
  end
end
