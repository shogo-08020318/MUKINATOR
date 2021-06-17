class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.references :reason, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :gender, null: false

      t.timestamps
    end
  end
end
