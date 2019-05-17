class Post < ApplicationRecord
  validates :title, presence: true, length: {maximum: 250}
  validates :body, presence: true
  has_many :comments
  belongs_to :user

end
