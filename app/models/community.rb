class Community < ApplicationRecord
  has_many :posts
  has_many :users, through: :memberships

  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [ :title ],
    using: {
      tsearch: { prefix: true }
    }
end
