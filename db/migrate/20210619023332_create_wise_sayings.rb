class CreateWiseSayings < ActiveRecord::Migration[6.0]
  def change
    create_table :wise_sayings do |t|
      t.string :name, null: false
      t.string :people, null: false

      t.timestamps
    end
  end
end
