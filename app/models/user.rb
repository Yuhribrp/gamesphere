class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memberships
  has_many :communities, through: :memberships
  has_many :evaluations
  has_many :gametags
  has_many :posts
  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
end
