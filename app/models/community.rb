class Community < ApplicationRecord
  has_many :post
  has_many :membership
  belongs_to :user
end
