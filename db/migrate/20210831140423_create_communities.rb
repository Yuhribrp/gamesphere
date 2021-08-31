class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.string :title
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
