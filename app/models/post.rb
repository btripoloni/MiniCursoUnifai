class Post < ApplicationRecord
  belongs_to :admin
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true
end
