class Comment < ApplicationRecord
  validates :email, presence: true
  validates :body, presence: true
  belongs_to :post
end
