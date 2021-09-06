class Post < ApplicationRecord
  belongs_to :community
  belongs_to :user
  has_many :comments
  has_one_attached :photo
  validates :content, presence: true
end
