class User < ApplicationRecord
  has_many :purchases
  has_many :stores, through: :purchases
  has_many :genres, through: :stores
end
