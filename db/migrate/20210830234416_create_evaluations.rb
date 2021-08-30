class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.integer :communicability
      t.integer :tilt_resistance
      t.integer :manners
      t.integer :sociability
      t.integer :leadership
      t.integer :hotness
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
