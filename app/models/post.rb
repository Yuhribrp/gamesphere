class Post < ApplicationRecord
  belongs_to :community
  has_many :comments
  validates :content, presence: true
end
