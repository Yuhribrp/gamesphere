class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :membership
  has_many :community
  has_many :evaluation
  belongs_to :user
  validates :username, presence: true, uniqueness: true
  validates :age, presence: true
  validates :language, presence: true
  validates :location, presence: true
end
