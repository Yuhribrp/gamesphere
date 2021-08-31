class Post < ApplicationRecord
  belongs_to :community
  has_many :comments
end
