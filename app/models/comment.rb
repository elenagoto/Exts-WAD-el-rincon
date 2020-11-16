class Comment < ApplicationRecord
  # Validation
  validates :body, presence: true

  # Relationships
  belongs_to :post
  belongs_to :user
end
