class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}, uniqueness: true
  has_many :comments
  has_many :post
end
