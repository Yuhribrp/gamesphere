class Community < ApplicationRecord
  has_many :posts
  has_many :users, through: :memberships
  has_many :memberships, dependent: :destroy
  # validates :user_id, uniqueness: true
  include PgSearch::Model
  pg_search_scope :search_by_title,
                  against: [:title],
                  using: {
                    tsearch: { prefix: true }
  }

  def self.perform_search(keyword)
    if keyword.present?
      Community.search(keyword)
    else
      Community.all
    end.sorted
  end
end
