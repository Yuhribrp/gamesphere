class Membership < ApplicationRecord
  attr_accessor :user_id, :community_id
  belongs_to :user
  belongs_to :community

  # validates :user, uniqueness: { scope: :community}
  validates :user_id, uniqueness: { scope: :community_id }
end
