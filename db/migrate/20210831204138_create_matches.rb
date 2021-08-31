class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :user_one
      t.integer :user_two
      t.float :matching_score

      t.timestamps
    end
  end
end
