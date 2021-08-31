class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :photo
      t.string :video
      t.text :content
      t.integer :like
      t.references :community, null: false, foreign_key: true

      t.timestamps
    end
  end
end
