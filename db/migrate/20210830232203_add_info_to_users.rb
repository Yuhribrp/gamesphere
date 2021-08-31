class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :full_name, :string
    add_column :users, :language, :string
    add_column :users, :location, :string
    add_column :users, :age, :integer
  end
end
