class CreateGametags < ActiveRecord::Migration[6.0]
  def change
    create_table :gametags do |t|
      t.string :game_title
      t.integer :raking
      t.string :skil_level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
