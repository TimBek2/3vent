class User < ApplicationRecord
  # :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :likes
  has_many :events, through: :likes
end
