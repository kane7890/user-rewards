class User < ApplicationRecord
  # set up using secure password
  has_secure_password
  # has many purchases ("join" model/class)
  has_many :purchases
  # has many stores through the purchases model
  has_many :stores, through: :purchases
  # has many genres through the stores (and the purchases)
  has_many :genres, through: :stores

  # validate name to be present, and to be unique
  validates :name, presence: true
  validates :name, uniqueness: true

end
