class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :photo
      t.string :video
      t.text :content
      t.string :title
      t.integer :likes

      t.timestamps
    end
  end
end
