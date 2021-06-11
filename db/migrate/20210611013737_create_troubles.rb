class CreateTroubles < ActiveRecord::Migration[6.0]
  def change
    create_table :troubles do |t|
      t.string :name, null: false
      t.integer :kind, null: false

      t.timestamps
    end
  end
end
