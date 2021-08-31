class Community < ApplicationRecord
  has_many :posts
  has_many :users, through: :memberships
end
