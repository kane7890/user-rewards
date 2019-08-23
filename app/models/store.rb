class Store < ApplicationRecord
  # a store has many purchases and many users through users...
  #
  has_many :purchases
  has_many :users, through: :purchases
  # store belongs to one genre
  belongs_to :genre
end
