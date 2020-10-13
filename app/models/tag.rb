class Tag < ApplicationRecord
  # Callbacks
  before_validation :downcase_name

  # Validations
  validates :name, presence: true

  # Relationships
  has_many :taggings
  has_many :posts, through: :taggings

  # Methods
  private

  def downcase_name
    self.name = name.downcase.strip
  end
end
