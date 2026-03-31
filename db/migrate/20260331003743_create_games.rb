class CreateGames < ActiveRecord::Migration[7.2]
  def change
    create_table :games do |t|
      t.integer :mode
      t.datetime :release_date
      t.string :developer
      t.references :system_requeriment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
