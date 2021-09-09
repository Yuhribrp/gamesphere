class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memberships, dependent: :destroy
  has_many :communities, through: :memberships
  has_many :evaluations
  has_many :gametags
  has_many :posts
  has_many :user_one_matches, class_name: 'Match', foreign_key: 'user_one_id'
  has_many :user_two_matches, class_name: 'Match', foreign_key: 'user_two_id'
  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
end
