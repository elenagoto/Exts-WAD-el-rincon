class Tag < ApplicationRecord
  # Callbacks
  validates :name, presence: true
  before_validation :downcase_name

  # Relationships
  has_many :taggings
  has_many :posts, through: :taggings

  # Methods
  private

  def downcase_name
    self.name = name.downcase.strip
  end
end
