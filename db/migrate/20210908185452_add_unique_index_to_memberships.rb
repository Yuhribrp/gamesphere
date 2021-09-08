class AddUniqueIndexToMemberships < ActiveRecord::Migration[6.0]
  def change
    add_index :memberships, [:user_id, :community_id], unique: true
  end
end
