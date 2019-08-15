class User < ApplicationRecord
  has_secure_password
  has_many :purchases
  has_many :stores, through: :purchases
  has_many :genres, through: :stores

  validates :name, presence: true
  validates :name, uniqueness: true

end
